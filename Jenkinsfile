node {
    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {

        def customImage = docker.build("sumanth55/case-study-b")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}