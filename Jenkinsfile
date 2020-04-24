// properties([pipelineTriggers([githubPush()])])



pipeline {
     
//     properties([
//   pipelineTriggers([
//   [$class: 'GenericTrigger',
//     genericVariables: [
//      [ key: 'committer_name', value: '$.actor.displayName' ],
//      [ key: 'committer_email', value: '$.actor.emailAddress' ],
//      [ key: 'ref', value: '$.changes[0].refId'],
//      [ key: 'tag', value: '$.changes[0].refId', regexpFilter: 'refs/tags/'],
//      [ key: 'commit', value: '$.changes[0].toHash' ],
//      [ key: 'repo_slug', value: '$.repository.slug' ],
//      [ key: 'project_key', value: '$.repository.project.key' ],
//      [ key: 'clone_url', value: '$.repository.links.clone[0].href' ]
//     ],
     
//     causeString: '$committer_name pushed tag $tag to $clone_url referencing $commit',
    
//     token: 'abc123',
    
//     printContributedVariables: true,
//     printPostContent: true,
    
//     regexpFilterText: '$ref',
//     regexpFilterExpression: '^refs/tags/.*'
//   ]
//   ])
//  ])
 
   
   agent any
   
 
   stages {
       
        stage('Preparation') {
    
            steps{
                git branch: 'testintBranch',
                url: 'https://github.com/dinusha92/test.git',
                credentialsId: 'github-dinusha'
            }
        }
      stage('Hello') {
         steps {
            echo "Hello"
         }
      }
   }
}

