## Infra creation

## Configuration Management 
* We need to configure `jenkins-master` and `jenkins-slave`. Lets create the same using ansible playbooks.
* Later on any package that needs to be installed on the `jenkins-slave` should be coming from `ansible-playbooks` only.
* Lets start with `jenkins-master` configuration:
```bash
# Manual steps to install jenkins
```

## 6 Sonar
* We created a Quality gate, with code smells as the condition , and made that gate as the default. 
* Now, when the jenkins build triggers based on the results from jenkins my Sonar should pass/fail, based on the results(Gate results)



