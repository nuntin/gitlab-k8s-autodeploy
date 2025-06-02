# GitLab K8s Auto Deploy (Refactored Edition)

This is a **survival-ready infrastructure demo** — showing how to deploy an app to Kubernetes using Helm, without relying on paid services or GitLab Runner.

It’s designed for:
- Freelancers who want to **prove they can deploy** even without budget
- DevOps engineers building credibility via GitHub
- Clients looking for real-world deploy logic, not just templates

---

## 🔧 Tech Stack

- Kubernetes (Minikube, K3s, or any cluster)
- Helm 3
- GitLab CI/CD (optional, realistic pipeline included)
- ConfigMap, Secrets, Environments separation (mocked)

---

## 🚀 Deployment (Manual Mode)

No GitLab Runner? No problem. You can test the whole thing manually.

### 1. Start Minikube
```bash
minikube start
```

### 2. Create Static HTML ConfigMap
```bash
kubectl create configmap basic-html --from-file=app/index.html
```

### 3. Deploy via Helm
```bash
helm upgrade --install basic-app helm-chart/basic-app --values environments/dev/values.yaml
```

### 4. Access the App
```bash
minikube service basic-app
```

---

## 🤖 GitLab CI/CD

Included `.gitlab-ci.yml` with real stages:

```yaml
stages:
  - plan
  - lint
  - deploy
  - validate
  - cleanup
```

> This pipeline simulates a full flow: Helm lint, deploy, validation, and optional cleanup.

You can run this CI later with a GitLab Kubernetes runner.

---

## 🔐 Secret Handling (Mock)

You’ll find a sample:

```yaml
secrets/mock-secrets.yaml
```

This shows awareness of:
- Secret separation from chart
- Security practices even in simple pipelines

---

## 🧭 Environment-Specific Values

Supports Dev & Prod overrides:

```
environments/dev/values.yaml
environments/prod/values.yaml
```

---

## 📸 Demo Proof (Optional)

If you need visual proof, use:

```
demo.gif
```

---

## 📂 Project Structure

| Path                    | Description                         |
|-------------------------|-------------------------------------|
| `app/`                  | Static HTML content                 |
| `helm-chart/`           | Helm chart with templates           |
| `environments/`         | Per-environment Helm values         |
| `secrets/`              | Mock secrets (optional use)         |
| `.gitlab-ci.yml`        | Multi-stage pipeline (manual-ready) |
| `demo.gif`              | Optional visual confirmation        |

---

## 💡 Why This Exists

Because not every DevOps engineer has:
- Access to paid runners
- Real client jobs to showcase

This project proves you can build + deploy K8s apps **from scratch**.

> It’s not about perfect infra.  
> It’s about proving you can work, ship, and survive.

---

## 🙏 Author

[Nuntin (GitHub)](https://github.com/Nuntin)  
DevOps / Infra Engineer • 12+ years experience  
Open to **remote / freelance work** — even at survival rates.

