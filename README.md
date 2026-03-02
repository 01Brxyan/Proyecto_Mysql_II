# Proyecto MySQL II — Sistema de Gestión Inmobiliaria

Este proyecto consiste en el diseño y construcción de una base de datos en MySQL para simular el funcionamiento de una inmobiliaria. La intención principal fue aplicar los conocimientos adquiridos durante el aprendizaje de bases de datos relacionales, pasando desde el diseño conceptual hasta la automatización de procesos dentro del sistema.

El sistema permite administrar información relacionada con propiedades, clientes interesados en comprar o arrendar, agentes inmobiliarios, contratos firmados y el historial de pagos asociados a cada contrato.

---

## Modelo Entidad Relación

El diseño de la base de datos fue realizado mediante un modelo entidad-relación normalizado hasta **Tercera Forma Normal (3FN)**.
La normalización permitió eliminar redundancias, evitar inconsistencias y garantizar que cada tabla almacene únicamente la información necesaria.

![Modelo Entidad Relacion](MER/image.png)

Durante el proceso de normalización se tomaron decisiones como:

* Separar los tipos de propiedad en una entidad independiente.
* Evitar datos repetidos de clientes y agentes dentro de contratos.
* Relacionar pagos únicamente con contratos existentes.
* Manejar estados de propiedades sin duplicar información.

Esto permite que el sistema sea escalable y más fácil de mantener.

---

## Funcionamiento general del sistema

La base de datos representa el flujo básico de trabajo de una inmobiliaria:

1. Se registran propiedades disponibles para venta o arriendo.
2. Se almacenan clientes interesados.
3. Los agentes inmobiliarios gestionan contratos entre clientes y propiedades.
4. Cada contrato genera registros de pagos.
5. El sistema mantiene historial automático de cambios importantes.

---

## Funciones personalizadas

Se desarrollaron funciones SQL para automatizar operaciones frecuentes dentro del sistema:

**Cálculo de comisión del agente**
Permite obtener automáticamente la comisión generada por un agente cuando se realiza una venta, evitando cálculos manuales.

**Cálculo de deuda pendiente**
Calcula cuánto dinero falta por pagar en contratos de arriendo teniendo en cuenta los pagos ya registrados.

**Total de propiedades disponibles por tipo**
Permite conocer rápidamente cuántas propiedades se encuentran disponibles según su clasificación.

Estas funciones ayudan a centralizar la lógica dentro de la base de datos.

---

## Triggers implementados

El sistema utiliza triggers para registrar eventos importantes sin intervención manual:

* Cuando cambia el estado de una propiedad (por ejemplo, de disponible a arrendada o vendida), el sistema guarda automáticamente un registro histórico.
* Al crearse un nuevo contrato se genera un registro automático que permite llevar control de auditoría.

Esto asegura trazabilidad de los cambios realizados dentro del sistema.

---

## Seguridad y control de acceso

Se implementó un esquema básico de seguridad mediante usuarios y privilegios diferenciados:

* Administrador: acceso completo al sistema.
* Agente inmobiliario: gestión de propiedades, clientes y contratos.
* Contador: acceso enfocado en pagos y reportes financieros.

La separación de roles evita accesos innecesarios y simula un entorno real de trabajo.

---

## Optimización y automatización

Para mejorar el rendimiento se aplicaron índices sobre columnas utilizadas frecuentemente en búsquedas y relaciones entre tablas.

También se configuraron eventos programados que ejecutan tareas automáticas dentro de MySQL, como la generación periódica de reportes o mantenimiento de registros históricos. Esto permite que el sistema funcione parcialmente de forma autónoma.

---

## Conclusión

Este proyecto permitió aplicar de manera práctica conceptos fundamentales de bases de datos relacionales como normalización, diseño estructural, automatización mediante triggers y eventos, así como seguridad basada en roles.

El desarrollo se realizó como parte del proceso de aprendizaje en MySQL, buscando construir una base de datos funcional que represente un escenario cercano a un sistema inmobiliario real.
