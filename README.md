# AtlassianSDK
Docker files to generate Atlassian SDK environment 

- OS :Alpine 3.15.1
- Java: v11
- Atlassian SDK: v8.2.7
- gnupg [gpg]

# How to use this image

Use below command to pull the docker image

```
docker pull ghcr.io/sudh33r/alpine/jdk11/asdk:latest
```

To encrypt a file

```
gpg --symmetric --cipher-algo AES256 <file name>
```

To decrypt a file

```
gpg --quiet --batch --yes --decrypt --passphrase="<passphrase test>" --output </temp/test[output file/path> <test.gpg [file to decrypt]>
```
