.class abstract Lcom/amazonaws/regions/RegionDefaults;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/util/List;
    .locals 26

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "af-south-1"

    const-string v3, "amazonaws.com"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "autoscaling"

    const-string v4, "autoscaling.af-south-1.amazonaws.com"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.af-south-1.amazonaws.com"

    const-string v7, "dynamodb"

    invoke-static {v1, v7, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.af-south-1.amazonaws.com"

    const-string v8, "ec2"

    invoke-static {v1, v8, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.af-south-1.amazonaws.com"

    const-string v9, "elasticloadbalancing"

    invoke-static {v1, v9, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.af-south-1.amazonaws.com"

    const-string v10, "kms"

    invoke-static {v1, v10, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.af-south-1.amazonaws.com"

    const-string v11, "lambda"

    invoke-static {v1, v11, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.af-south-1.amazonaws.com"

    const-string v12, "logs"

    invoke-static {v1, v12, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.af-south-1.amazonaws.com"

    const-string v13, "s3"

    invoke-static {v1, v13, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.af-south-1.amazonaws.com"

    const-string v14, "sns"

    invoke-static {v1, v14, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.af-south-1.amazonaws.com"

    const-string v15, "sqs"

    invoke-static {v1, v15, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "ap-northeast-1"

    invoke-direct {v1, v4, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-identity.ap-northeast-1.amazonaws.com"

    move-object/from16 v16, v2

    const-string v2, "cognito-identity"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-idp.ap-northeast-1.amazonaws.com"

    move-object/from16 v17, v2

    const-string v2, "cognito-idp"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-sync.ap-northeast-1.amazonaws.com"

    move-object/from16 v18, v2

    const-string v2, "cognito-sync"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "data.iot.ap-northeast-1.amazonaws.com"

    move-object/from16 v19, v2

    const-string v2, "data.iot"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v7, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v8, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v9, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "firehose"

    move-object/from16 v20, v9

    const-string v9, "firehose.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v4, v9, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "iot.ap-northeast-1.amazonaws.com"

    const-string v9, "iot"

    invoke-static {v1, v9, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.ap-northeast-1.amazonaws.com"

    move-object/from16 v21, v9

    const-string v9, "kinesis"

    invoke-static {v1, v9, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v10, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v11, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v12, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.ap-northeast-1.amazonaws.com"

    move-object/from16 v22, v12

    const-string v12, "polly"

    invoke-static {v1, v12, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v13, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sdb"

    move-object/from16 v23, v13

    const-string v13, "sdb.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v4, v13, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v14, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v15, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sts"

    const-string v13, "sts.amazonaws.com"

    invoke-static {v1, v4, v13, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v5, "ap-northeast-2"

    invoke-direct {v1, v5, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "autoscaling.ap-northeast-2.amazonaws.com"

    move-object/from16 v25, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "cognito-identity.ap-northeast-2.amazonaws.com"

    move-object/from16 v24, v13

    move-object/from16 v13, v17

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "cognito-idp.ap-northeast-2.amazonaws.com"

    move-object/from16 v13, v18

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "cognito-sync.ap-northeast-2.amazonaws.com"

    move-object/from16 v13, v19

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "data.iot.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "dynamodb.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v7, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "ec2.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v8, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "elasticloadbalancing.ap-northeast-2.amazonaws.com"

    move-object/from16 v19, v2

    move-object/from16 v2, v20

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "iot.ap-northeast-2.amazonaws.com"

    move-object/from16 v2, v21

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "kinesis.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v9, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "kms.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v10, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "lambda.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v11, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "logs.ap-northeast-2.amazonaws.com"

    move-object/from16 v2, v22

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "polly.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v12, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "s3.ap-northeast-2.amazonaws.com"

    move-object/from16 v22, v12

    move-object/from16 v12, v23

    invoke-static {v1, v12, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sns.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v14, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sqs.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v15, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sts.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v4, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v5, "ap-south-1"

    invoke-direct {v1, v5, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v16

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "autoscaling.ap-south-1.amazonaws.com"

    move-object/from16 v23, v3

    move-object/from16 v3, v24

    invoke-static {v1, v3, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "cognito-identity.ap-south-1.amazonaws.com"

    move-object/from16 v3, v17

    invoke-static {v1, v3, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "cognito-idp.ap-south-1.amazonaws.com"

    move-object/from16 v3, v18

    invoke-static {v1, v3, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "cognito-sync.ap-south-1.amazonaws.com"

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "dynamodb.ap-south-1.amazonaws.com"

    invoke-static {v1, v7, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "ec2.ap-south-1.amazonaws.com"

    invoke-static {v1, v8, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "elasticloadbalancing.ap-south-1.amazonaws.com"

    move-object/from16 v18, v8

    move-object/from16 v8, v20

    invoke-static {v1, v8, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "kinesis.ap-south-1.amazonaws.com"

    invoke-static {v1, v9, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "kms.ap-south-1.amazonaws.com"

    invoke-static {v1, v10, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "lambda.ap-south-1.amazonaws.com"

    invoke-static {v1, v11, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "logs.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "polly.ap-south-1.amazonaws.com"

    move-object/from16 v20, v2

    move-object/from16 v2, v22

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "s3.ap-south-1.amazonaws.com"

    invoke-static {v1, v12, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sns.ap-south-1.amazonaws.com"

    invoke-static {v1, v14, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sqs.ap-south-1.amazonaws.com"

    invoke-static {v1, v15, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v5, v25

    invoke-static {v1, v4, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v0, "ap-southeast-1"

    move-object/from16 v6, v23

    invoke-direct {v1, v0, v6}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "autoscaling.ap-southeast-1.amazonaws.com"

    move-object/from16 v22, v4

    move-object/from16 v6, v24

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v6, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "cognito-identity.ap-southeast-1.amazonaws.com"

    move-object/from16 v6, v17

    invoke-static {v1, v6, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "cognito-idp.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v3, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "cognito-sync.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v13, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "data.iot.ap-southeast-1.amazonaws.com"

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    invoke-static {v1, v13, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "dynamodb.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v7, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "ec2.ap-southeast-1.amazonaws.com"

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    invoke-static {v1, v7, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "elasticloadbalancing.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v8, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "iot.ap-southeast-1.amazonaws.com"

    move-object/from16 v18, v8

    move-object/from16 v8, v21

    invoke-static {v1, v8, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "kinesis.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v9, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "kms.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v10, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "lambda.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v11, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "logs.ap-southeast-1.amazonaws.com"

    move-object/from16 v21, v11

    move-object/from16 v11, v20

    invoke-static {v1, v11, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "polly.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "s3.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v12, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sdb"

    move-object/from16 v20, v12

    const-string v12, "sdb.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v0, v12, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sns.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v14, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sqs.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v15, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, v22

    move-object/from16 v12, v25

    invoke-static {v1, v0, v12, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "ap-southeast-2"

    move-object/from16 v5, v23

    invoke-direct {v1, v4, v5}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.ap-southeast-2.amazonaws.com"

    move-object/from16 v5, v24

    const/4 v0, 0x0

    const/4 v12, 0x1

    invoke-static {v1, v5, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-identity.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v6, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-idp.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v3, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-sync.ap-southeast-2.amazonaws.com"

    move-object/from16 v24, v3

    move-object/from16 v3, v17

    invoke-static {v1, v3, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "data.iot.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v13, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.ap-southeast-2.amazonaws.com"

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    invoke-static {v1, v13, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v7, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.ap-southeast-2.amazonaws.com"

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    invoke-static {v1, v3, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "iot.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v8, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v9, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v10, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.ap-southeast-2.amazonaws.com"

    move-object/from16 v18, v8

    move-object/from16 v8, v21

    invoke-static {v1, v8, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v11, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.ap-southeast-2.amazonaws.com"

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    invoke-static {v1, v6, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sdb"

    const-string v6, "sdb.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v4, v6, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v14, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v15, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v4, v22

    move-object/from16 v6, v25

    invoke-static {v1, v4, v6, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v0, "ca-central-1"

    move-object/from16 v12, v23

    invoke-direct {v1, v0, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "autoscaling.ca-central-1.amazonaws.com"

    const/4 v4, 0x1

    const/4 v12, 0x0

    invoke-static {v1, v5, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "dynamodb.ca-central-1.amazonaws.com"

    invoke-static {v1, v13, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "ec2.ca-central-1.amazonaws.com"

    invoke-static {v1, v7, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "elasticloadbalancing.ca-central-1.amazonaws.com"

    invoke-static {v1, v3, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "kinesis.ca-central-1.amazonaws.com"

    invoke-static {v1, v9, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "kms.ca-central-1.amazonaws.com"

    invoke-static {v1, v10, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "lambda.ca-central-1.amazonaws.com"

    invoke-static {v1, v8, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "logs.ca-central-1.amazonaws.com"

    invoke-static {v1, v11, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "polly.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "s3.ca-central-1.amazonaws.com"

    move-object/from16 v25, v2

    move-object/from16 v2, v20

    invoke-static {v1, v2, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sns.ca-central-1.amazonaws.com"

    invoke-static {v1, v14, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sqs.ca-central-1.amazonaws.com"

    invoke-static {v1, v15, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, v22

    invoke-static {v1, v0, v6, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "eu-central-1"

    move-object/from16 v12, v23

    invoke-direct {v1, v4, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.eu-central-1.amazonaws.com"

    const/4 v12, 0x0

    const/4 v0, 0x1

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-identity.eu-central-1.amazonaws.com"

    move-object/from16 v20, v5

    move-object/from16 v5, v21

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-idp.eu-central-1.amazonaws.com"

    move-object/from16 v5, v24

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-sync.eu-central-1.amazonaws.com"

    move-object/from16 v5, v19

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "data.iot.eu-central-1.amazonaws.com"

    move-object/from16 v5, v17

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.eu-central-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.eu-central-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.eu-central-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "firehose"

    const-string v5, "firehose.eu-central-1.amazonaws.com"

    invoke-static {v1, v4, v5, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "iot.eu-central-1.amazonaws.com"

    move-object/from16 v5, v18

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.eu-central-1.amazonaws.com"

    invoke-static {v1, v9, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.eu-central-1.amazonaws.com"

    invoke-static {v1, v10, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.eu-central-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.eu-central-1.amazonaws.com"

    invoke-static {v1, v11, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.eu-central-1.amazonaws.com"

    move-object/from16 v18, v10

    move-object/from16 v10, v25

    invoke-static {v1, v10, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.eu-central-1.amazonaws.com"

    invoke-static {v1, v14, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.eu-central-1.amazonaws.com"

    invoke-static {v1, v15, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v4, v22

    invoke-static {v1, v4, v6, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v0, "eu-south-1"

    move-object/from16 v12, v23

    invoke-direct {v1, v0, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    const-string v4, "autoscaling.eu-south-1.amazonaws.com"

    move-object/from16 v23, v6

    move-object/from16 v22, v10

    move-object/from16 v6, v20

    const/4 v10, 0x0

    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.eu-south-1.amazonaws.com"

    invoke-static {v1, v13, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.eu-south-1.amazonaws.com"

    invoke-static {v1, v7, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.eu-south-1.amazonaws.com"

    invoke-static {v1, v3, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.eu-south-1.amazonaws.com"

    invoke-static {v1, v8, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.eu-south-1.amazonaws.com"

    invoke-static {v1, v11, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.eu-south-1.amazonaws.com"

    invoke-static {v1, v2, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.eu-south-1.amazonaws.com"

    invoke-static {v1, v14, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.eu-south-1.amazonaws.com"

    invoke-static {v1, v15, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "eu-west-1"

    invoke-direct {v1, v4, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.eu-west-1.amazonaws.com"

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-identity.eu-west-1.amazonaws.com"

    move-object/from16 v25, v6

    move-object/from16 v6, v21

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-idp.eu-west-1.amazonaws.com"

    move-object/from16 v6, v24

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-sync.eu-west-1.amazonaws.com"

    move-object/from16 v6, v19

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "data.iot.eu-west-1.amazonaws.com"

    move-object/from16 v6, v17

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.eu-west-1.amazonaws.com"

    invoke-static {v1, v13, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.eu-west-1.amazonaws.com"

    invoke-static {v1, v7, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.eu-west-1.amazonaws.com"

    invoke-static {v1, v3, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "email"

    const-string v6, "email.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v6, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "firehose"

    const-string v6, "firehose.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v6, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "iot.eu-west-1.amazonaws.com"

    invoke-static {v1, v5, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.eu-west-1.amazonaws.com"

    move-object/from16 v6, v20

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.eu-west-1.amazonaws.com"

    move-object/from16 v6, v18

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.eu-west-1.amazonaws.com"

    invoke-static {v1, v8, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.eu-west-1.amazonaws.com"

    invoke-static {v1, v11, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "machinelearning"

    move-object/from16 v18, v11

    const-string v11, "machinelearning.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v11, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.eu-west-1.amazonaws.com"

    move-object/from16 v11, v22

    invoke-static {v1, v11, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "rekognition"

    const-string v11, "rekognition.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v11, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sdb"

    const-string v11, "sdb.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v11, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.eu-west-1.amazonaws.com"

    invoke-static {v1, v14, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.eu-west-1.amazonaws.com"

    invoke-static {v1, v15, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v4, v16

    move-object/from16 v11, v23

    invoke-static {v1, v4, v11, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v9, "eu-west-2"

    invoke-direct {v1, v9, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "autoscaling.eu-west-2.amazonaws.com"

    move-object/from16 v23, v0

    move-object/from16 v16, v12

    move-object/from16 v0, v25

    const/4 v12, 0x1

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "cognito-identity.eu-west-2.amazonaws.com"

    move-object/from16 v0, v21

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "cognito-idp.eu-west-2.amazonaws.com"

    move-object/from16 v0, v24

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "cognito-sync.eu-west-2.amazonaws.com"

    move-object/from16 v0, v19

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "dynamodb.eu-west-2.amazonaws.com"

    invoke-static {v1, v13, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "ec2.eu-west-2.amazonaws.com"

    invoke-static {v1, v7, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "elasticloadbalancing.eu-west-2.amazonaws.com"

    invoke-static {v1, v3, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "iot.eu-west-2.amazonaws.com"

    invoke-static {v1, v5, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "kinesis.eu-west-2.amazonaws.com"

    move-object/from16 v19, v5

    move-object/from16 v5, v20

    invoke-static {v1, v5, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "kms.eu-west-2.amazonaws.com"

    invoke-static {v1, v6, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "lambda.eu-west-2.amazonaws.com"

    invoke-static {v1, v8, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "logs.eu-west-2.amazonaws.com"

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "polly.eu-west-2.amazonaws.com"

    move-object/from16 v0, v22

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "s3.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "sns.eu-west-2.amazonaws.com"

    invoke-static {v1, v14, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "sqs.eu-west-2.amazonaws.com"

    invoke-static {v1, v15, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v1, v4, v11, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v9, "eu-west-3"

    move-object/from16 v10, v16

    invoke-direct {v1, v9, v10}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v23

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v9

    const-string v9, "autoscaling.eu-west-3.amazonaws.com"

    move-object/from16 v22, v4

    move-object/from16 v23, v10

    move-object/from16 v10, v25

    const/4 v4, 0x0

    invoke-static {v1, v10, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "dynamodb.eu-west-3.amazonaws.com"

    invoke-static {v1, v13, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "ec2.eu-west-3.amazonaws.com"

    invoke-static {v1, v7, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "elasticloadbalancing.eu-west-3.amazonaws.com"

    invoke-static {v1, v3, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "kinesis.eu-west-3.amazonaws.com"

    invoke-static {v1, v5, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "kms.eu-west-3.amazonaws.com"

    invoke-static {v1, v6, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "lambda.eu-west-3.amazonaws.com"

    invoke-static {v1, v8, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "logs.eu-west-3.amazonaws.com"

    move-object/from16 v25, v8

    move-object/from16 v8, v18

    invoke-static {v1, v8, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "polly.eu-west-3.amazonaws.com"

    invoke-static {v1, v0, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "s3.eu-west-3.amazonaws.com"

    invoke-static {v1, v2, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "sns.eu-west-3.amazonaws.com"

    invoke-static {v1, v14, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "sqs.eu-west-3.amazonaws.com"

    invoke-static {v1, v15, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v9, v22

    invoke-static {v1, v9, v11, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "sa-east-1"

    move-object/from16 v12, v23

    invoke-direct {v1, v4, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.sa-east-1.amazonaws.com"

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.sa-east-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.sa-east-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.sa-east-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.sa-east-1.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.sa-east-1.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.sa-east-1.amazonaws.com"

    move-object/from16 v18, v6

    move-object/from16 v6, v25

    invoke-static {v1, v6, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.sa-east-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.sa-east-1.amazonaws.com"

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sdb"

    move-object/from16 v25, v2

    const-string v2, "sdb.sa-east-1.amazonaws.com"

    invoke-static {v1, v4, v2, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns.sa-east-1.amazonaws.com"

    invoke-static {v1, v14, v2, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs.sa-east-1.amazonaws.com"

    invoke-static {v1, v15, v2, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v2, v22

    invoke-static {v1, v2, v11, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-east-1"

    move-object/from16 v9, v23

    invoke-direct {v1, v4, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.us-east-1.amazonaws.com"

    const/4 v9, 0x1

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-identity.us-east-1.amazonaws.com"

    move-object/from16 v22, v10

    move-object/from16 v10, v21

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-idp.us-east-1.amazonaws.com"

    move-object/from16 v10, v24

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-sync.us-east-1.amazonaws.com"

    move-object/from16 v10, v20

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "data.iot.us-east-1.amazonaws.com"

    move-object/from16 v10, v17

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.us-east-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.us-east-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.us-east-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "email"

    const-string v10, "email.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v10, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "firehose"

    const-string v10, "firehose.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v10, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "iot.us-east-1.amazonaws.com"

    move-object/from16 v10, v19

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.us-east-1.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.us-east-1.amazonaws.com"

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.us-east-1.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.us-east-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "machinelearning"

    move-object/from16 v18, v8

    const-string v8, "machinelearning.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "mobileanalytics"

    const-string v8, "mobileanalytics.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "pinpoint"

    const-string v8, "pinpoint.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.us-east-1.amazonaws.com"

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "rekognition"

    const-string v8, "rekognition.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.amazonaws.com"

    move-object/from16 v8, v25

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sdb"

    const-string v8, "sdb.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.us-east-1.amazonaws.com"

    invoke-static {v1, v14, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.us-east-1.amazonaws.com"

    invoke-static {v1, v15, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v1, v2, v11, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-east-2"

    move-object/from16 v8, v23

    invoke-direct {v1, v4, v8}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.us-east-2.amazonaws.com"

    move-object/from16 v8, v22

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-identity.us-east-2.amazonaws.com"

    move-object/from16 v8, v21

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-idp.us-east-2.amazonaws.com"

    move-object/from16 v8, v24

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "cognito-sync.us-east-2.amazonaws.com"

    move-object/from16 v8, v20

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.us-east-2.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.us-east-2.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.us-east-2.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "firehose"

    const-string v8, "firehose.us-east-2.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "iot.us-east-2.amazonaws.com"

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.us-east-2.amazonaws.com"

    move-object/from16 v8, v19

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.us-east-2.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.us-east-2.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.us-east-2.amazonaws.com"

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.us-east-2.amazonaws.com"

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.us-east-2.amazonaws.com"

    move-object/from16 v18, v0

    move-object/from16 v0, v25

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.us-east-2.amazonaws.com"

    invoke-static {v1, v14, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.us-east-2.amazonaws.com"

    invoke-static {v1, v15, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v1, v2, v11, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-west-1"

    move-object/from16 v9, v23

    invoke-direct {v1, v4, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.us-west-1.amazonaws.com"

    move-object/from16 v9, v22

    move-object/from16 v22, v2

    const/4 v2, 0x1

    invoke-static {v1, v9, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.us-west-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.us-west-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.us-west-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.us-west-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.us-west-1.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.us-west-1.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.us-west-1.amazonaws.com"

    invoke-static {v1, v10, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "polly.us-west-1.amazonaws.com"

    move-object/from16 v25, v10

    move-object/from16 v10, v18

    invoke-static {v1, v10, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.us-west-1.amazonaws.com"

    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sdb"

    move-object/from16 v18, v0

    const-string v0, "sdb.us-west-1.amazonaws.com"

    invoke-static {v1, v4, v0, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sns.us-west-1.amazonaws.com"

    invoke-static {v1, v14, v0, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sqs.us-west-1.amazonaws.com"

    invoke-static {v1, v15, v0, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, v22

    invoke-static {v1, v0, v11, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-west-2"

    move-object/from16 v2, v23

    invoke-direct {v1, v4, v2}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "autoscaling.us-west-2.amazonaws.com"

    const/4 v4, 0x1

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity.us-west-2.amazonaws.com"

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp.us-west-2.amazonaws.com"

    move-object/from16 v9, v24

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-sync.us-west-2.amazonaws.com"

    move-object/from16 v9, v20

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "data.iot.us-west-2.amazonaws.com"

    move-object/from16 v9, v17

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb.us-west-2.amazonaws.com"

    invoke-static {v1, v13, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2.us-west-2.amazonaws.com"

    invoke-static {v1, v7, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing.us-west-2.amazonaws.com"

    invoke-static {v1, v3, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "email"

    const-string v9, "email.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v9, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "firehose"

    const-string v9, "firehose.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v9, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot.us-west-2.amazonaws.com"

    move-object/from16 v9, v19

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis.us-west-2.amazonaws.com"

    invoke-static {v1, v8, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms.us-west-2.amazonaws.com"

    invoke-static {v1, v5, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda.us-west-2.amazonaws.com"

    invoke-static {v1, v6, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "logs.us-west-2.amazonaws.com"

    move-object/from16 v19, v5

    move-object/from16 v5, v25

    invoke-static {v1, v5, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "polly.us-west-2.amazonaws.com"

    invoke-static {v1, v10, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "rekognition"

    move-object/from16 v25, v10

    const-string v10, "rekognition.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3.us-west-2.amazonaws.com"

    move-object/from16 v10, v18

    invoke-static {v1, v10, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v10, "sdb.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns.us-west-2.amazonaws.com"

    invoke-static {v1, v14, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs.us-west-2.amazonaws.com"

    invoke-static {v1, v15, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v1, v0, v11, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "cn-north-1"

    const-string v10, "amazonaws.com.cn"

    invoke-direct {v1, v2, v10}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "autoscaling.cn-north-1.amazonaws.com.cn"

    move-object/from16 v16, v11

    move-object/from16 v11, v22

    invoke-static {v1, v11, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "cognito-identity.cn-north-1.amazonaws.com.cn"

    move-object/from16 v11, v21

    invoke-static {v1, v11, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "dynamodb.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v13, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "ec2.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v7, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "elasticloadbalancing.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v3, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "iot.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v9, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "kinesis.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v8, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "lambda.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v6, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "logs.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v5, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "s3.cn-north-1.amazonaws.com.cn"

    move-object/from16 v11, v18

    invoke-static {v1, v11, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "sns.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v14, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "sqs.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v15, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v10, "sts.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v0, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v10, "cn-northwest-1"

    const-string v4, "amazonaws.com.cn"

    invoke-direct {v1, v10, v4}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.cn-northwest-1.amazonaws.com.cn"

    move-object/from16 v18, v9

    move-object/from16 v10, v22

    const/4 v9, 0x1

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v13, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v7, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v3, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v11, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v14, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v15, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sts.amazonaws.com.cn"

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-gov-west-1"

    move-object/from16 v9, v23

    invoke-direct {v1, v4, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "autoscaling.us-gov-west-1.amazonaws.com"

    move-object/from16 v23, v2

    const/4 v2, 0x1

    invoke-static {v1, v10, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "dynamodb.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "ec2.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "elasticloadbalancing.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kinesis.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "kms.us-gov-west-1.amazonaws.com"

    move-object/from16 v22, v8

    move-object/from16 v8, v19

    invoke-static {v1, v8, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "lambda.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "logs.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "rekognition"

    move-object/from16 v19, v5

    const-string v5, "rekognition.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v4, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "s3.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v11, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sns.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v14, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v4, "sqs.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v15, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v4, v16

    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v5, "eu-north-1"

    invoke-direct {v1, v5, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v23

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v5

    const-string v5, "autoscaling.eu-north-1.amazonaws.com"

    invoke-static {v1, v10, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "dynamodb.eu-north-1.amazonaws.com"

    invoke-static {v1, v13, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "ec2.eu-north-1.amazonaws.com"

    invoke-static {v1, v7, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "elasticloadbalancing.eu-north-1.amazonaws.com"

    invoke-static {v1, v3, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "firehose"

    move-object/from16 v23, v3

    const-string v3, "firehose.eu-north-1.amazonaws.com"

    invoke-static {v1, v5, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "iot.eu-north-1.amazonaws.com"

    move-object/from16 v5, v18

    invoke-static {v1, v5, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "kinesis.eu-north-1.amazonaws.com"

    move-object/from16 v5, v22

    invoke-static {v1, v5, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "kms.eu-north-1.amazonaws.com"

    invoke-static {v1, v8, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "lambda.eu-north-1.amazonaws.com"

    invoke-static {v1, v6, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "logs.eu-north-1.amazonaws.com"

    move-object/from16 v22, v6

    move-object/from16 v6, v19

    invoke-static {v1, v6, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "s3.eu-north-1.amazonaws.com"

    invoke-static {v1, v11, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sns.eu-north-1.amazonaws.com"

    invoke-static {v1, v14, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sqs.eu-north-1.amazonaws.com"

    invoke-static {v1, v15, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v3, "ap-east-1"

    invoke-direct {v1, v3, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v16

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "autoscaling.ap-east-1.amazonaws.com"

    invoke-static {v1, v10, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "dynamodb.ap-east-1.amazonaws.com"

    invoke-static {v1, v13, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "ec2.ap-east-1.amazonaws.com"

    invoke-static {v1, v7, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "elasticloadbalancing.ap-east-1.amazonaws.com"

    move-object/from16 v19, v7

    move-object/from16 v7, v23

    invoke-static {v1, v7, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "firehose"

    const-string v7, "firehose.ap-east-1.amazonaws.com"

    invoke-static {v1, v3, v7, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "kinesis.ap-east-1.amazonaws.com"

    invoke-static {v1, v5, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "kms.ap-east-1.amazonaws.com"

    invoke-static {v1, v8, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "lambda.ap-east-1.amazonaws.com"

    move-object/from16 v7, v22

    invoke-static {v1, v7, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "logs.ap-east-1.amazonaws.com"

    invoke-static {v1, v6, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "polly.ap-east-1.amazonaws.com"

    move-object/from16 v22, v6

    move-object/from16 v6, v25

    invoke-static {v1, v6, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "s3.ap-east-1.amazonaws.com"

    invoke-static {v1, v11, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sns.ap-east-1.amazonaws.com"

    invoke-static {v1, v14, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v3, "sqs.ap-east-1.amazonaws.com"

    invoke-static {v1, v15, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v3, "me-south-1"

    invoke-direct {v1, v3, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v16

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "autoscaling.me-south-1.amazonaws.com"

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "cognito-identity.me-south-1.amazonaws.com"

    move-object/from16 v10, v21

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "cognito-idp.me-south-1.amazonaws.com"

    move-object/from16 v10, v24

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "cognito-sync.me-south-1.amazonaws.com"

    move-object/from16 v10, v20

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "data.iot.me-south-1.amazonaws.com"

    move-object/from16 v10, v17

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "dynamodb.me-south-1.amazonaws.com"

    invoke-static {v1, v13, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "ec2.me-south-1.amazonaws.com"

    move-object/from16 v10, v19

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "elasticloadbalancing.me-south-1.amazonaws.com"

    move-object/from16 v10, v23

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "firehose"

    const-string v10, "firehose.me-south-1.amazonaws.com"

    invoke-static {v1, v9, v10, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "iot.me-south-1.amazonaws.com"

    move-object/from16 v10, v18

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v9, "kinesis.me-south-1.amazonaws.com"

    invoke-static {v1, v5, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "kms.me-south-1.amazonaws.com"

    invoke-static {v1, v8, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "lambda.me-south-1.amazonaws.com"

    invoke-static {v1, v7, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "logs.me-south-1.amazonaws.com"

    move-object/from16 v7, v22

    invoke-static {v1, v7, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "polly.me-south-1.amazonaws.com"

    invoke-static {v1, v6, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "s3.me-south-1.amazonaws.com"

    invoke-static {v1, v11, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sdb"

    const-string v6, "sdb.me-south-1.amazonaws.com"

    invoke-static {v1, v5, v6, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sns.me-south-1.amazonaws.com"

    invoke-static {v1, v14, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v5, "sqs.me-south-1.amazonaws.com"

    invoke-static {v1, v15, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v3
.end method

.method private static b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->h()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
