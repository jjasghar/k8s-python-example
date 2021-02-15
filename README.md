# k8s-python-example

## Scope

This is a small python app to show different ways to run applications on Kubernetes.

## Local Testing

1. Clone down this repostitory, confirm you have `docker` installed.
1. Build the `docker` container: `docker build -t k8s-python-example .`
1. Run the container locally: `docker run -it -p 8080:8080 k8s-python-example:latest`
1. Check <http://localhost:8080> you should see the test page

## Deploying to Kubernetes

1. Use `kubectl` to deploy the stack
```
kubectl apply -f k8s/pythonapp-deployment.yaml
kubectl apply -f k8s/pythonapp-service.yaml
kubectl apply -f k8s/nginx-deployment.yaml
```


```text
Copyright:: 2021- IBM, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
