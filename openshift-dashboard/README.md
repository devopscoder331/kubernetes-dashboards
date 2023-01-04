### OpenShift Console

The console is a more friendly kubectl in the form of a single page webapp. It also integrates with other services like monitoring, chargeback, and OLM. Some things that go on behind the scenes include:

Proxying the Kubernetes API under /api/kubernetes
Providing additional non-Kubernetes APIs for interacting with the cluster
Serving all frontend static assets
User Authentication


Gihub: https://github.com/openshift/console
