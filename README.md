# 🛒 Arquitectura AWS Serverless para E-commerce

## 📌 Descripción

Este proyecto presenta una arquitectura serverless en AWS diseñada para una aplicación de e-commerce, enfocada en escalabilidad, alta disponibilidad, seguridad y optimización de costos.

La solución permite manejar picos de tráfico y grandes volúmenes de solicitudes sin necesidad de gestionar infraestructura.

---

## 🏗️ Arquitectura

La arquitectura está basada en servicios administrados de AWS:

- Amazon S3 (Frontend)
- Amazon CloudFront (CDN)
- Amazon API Gateway (HTTP API)
- AWS Lambda (Backend)
- Amazon DynamoDB (Base de datos NoSQL - On-Demand)
- Amazon ElastiCache (Redis - Cache)
- Amazon SQS (Mensajería asíncrona)

### 🔐 Seguridad:
- AWS WAF
- Amazon Cognito
- IAM

### 📊 Observabilidad:
- Amazon CloudWatch
- AWS X-Ray (opcional)

📌 Ver diagrama en: `diagram/arquitectura.png`

---

## ⚙️ Infraestructura como Código (IaC)

La infraestructura se define utilizando Terraform, permitiendo automatización, consistencia y reutilización.

📂 Ubicación:

terraform/


---

## 🚀 CI/CD

Se implementa un pipeline automatizado utilizando GitHub Actions:

- Ejecución automática en cada push
- Despliegue de infraestructura con Terraform
- Actualización de recursos en AWS

📂 Ubicación:

cicd/github-actions.yml


---

## 💸 Estimación de Costos

La estimación se realizó utilizando AWS Pricing Calculator bajo un escenario de tráfico moderado:

- 1,000,000 solicitudes mensuales
- 50 GB de transferencia de datos
- 5 GB de almacenamiento

💰 **Costo estimado mensual: $9.51 USD**

📌 Ver evidencia en:

cost/aws-cost.png


---

## 📄 Documentación

El documento completo de la solución se encuentra en:


docs/arquitectura.pdf


---

## 🎯 Características Clave

- Arquitectura serverless
- Escalabilidad automática
- Alta disponibilidad
- Optimización de costos (pago por uso)
- Despliegue automatizado
- Seguridad en múltiples capas

---

## 🧠 Flujo de la Aplicación

1. Usuario accede mediante CloudFront
2. Frontend servido desde S3
3. API Gateway recibe solicitudes
4. Lambda procesa lógica de negocio
5. DynamoDB almacena datos
6. ElastiCache mejora rendimiento
7. SQS maneja procesos asíncronos

---

## 👨‍💻 Autor

**Diego Campos**

---

## 📌 Nota

Este proyecto fue desarrollado como parte de una prueba técnica para un rol de Analista CloudOps AWS.