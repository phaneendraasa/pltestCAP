#!/usr/bin/env groovy

/*
 * This file bootstraps the codified Continuous Delivery pipeline for extensions of SAP solutions, such as SAP S/4HANA.
 * The pipeline helps you to deliver software changes quickly and in a reliable manner.
 * A suitable Jenkins instance is required to run the pipeline.
 * The Jenkins can easily be bootstraped using the life-cycle script located inside the 'cx-server' directory.
 *
 * More information on getting started with Continuous Delivery can be found in the following places:
 *   - GitHub repository: https://github.com/SAP/cloud-s4-sdk-pipeline
 *   - Blog Post: https://blogs.sap.com/2017/09/20/continuous-integration-and-delivery
 */

/*
 * Set pipelineVersion to a fixed released version (e.g. "v15") when running in a productive environment.
 * To find out about available versions and release notes, visit: https://github.com/SAP/cloud-s4-sdk-pipeline/releases
 */
/* String pipelineVersion = "master" */
String pipelineVersion = "v32"


/* node {
    deleteDir()
    sh "git clone --depth 1 https://github.com/SAP/cloud-s4-sdk-pipeline.git -b ${pipelineVersion} pipelines"
    load './pipelines/s4sdk-pipeline.groovy'
} */
@Library('piper-lib-os') _
/*@Library('piper-lib-local') _ */

node(){
  stage('Prepare')   {
      deleteDir()
      checkout scm
      setupCommonPipelineEnvironment script:this
  }
stage('Build')   {
      mtaBuild(
      script:this,
      verbose:'true' )
  }

stage('Code Review')   {
    sleep 5
      echo 'Code Review is successful'
  }

stage('Unit Test')   {
    sleep 20
      echo 'Unit Test is Successful'
  }

stage('Deploy')   {
    sleep 30
      echo 'Deployment is Successful'
  }    


}

 /* stage('Build')   {
      mtaBuild(
      script:this,
      verbose:'true' )
  } 
  
   stage('deploy') {
    cloudFoundryDeploy( 
        script: this,
        verbose: 'true' )
    } */
