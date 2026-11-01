.class public final enum Lcom/amazonaws/auth/policy/actions/S3Actions;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/actions/S3Actions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum AbortMultipartUpload:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum AllS3Actions:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum CreateBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketLocation:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListBucketMultipartUploads:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListBuckets:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListMultipartUploadParts:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListObjectVersions:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListObjects:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum PutObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum RestoreObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/4 v1, 0x0

    const-string v2, "s3:*"

    const-string v3, "AllS3Actions"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->AllS3Actions:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v2, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/4 v3, 0x1

    const-string v4, "s3:GetObject"

    const-string v5, "GetObject"

    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v4, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/4 v5, 0x2

    const-string v6, "s3:GetObjectVersion"

    const-string v7, "GetObjectVersion"

    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v6, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/4 v7, 0x3

    const-string v8, "s3:PutObject"

    const-string v9, "PutObject"

    invoke-direct {v6, v9, v7, v8}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/amazonaws/auth/policy/actions/S3Actions;->PutObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v8, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/4 v9, 0x4

    const-string v10, "s3:GetObjectAcl"

    const-string v11, "GetObjectAcl"

    invoke-direct {v8, v11, v9, v10}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v10, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/4 v11, 0x5

    const-string v12, "s3:GetObjectVersionAcl"

    const-string v13, "GetObjectVersionAcl"

    invoke-direct {v10, v13, v11, v12}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v12, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/4 v13, 0x6

    const-string v14, "s3:PutObjectAcl"

    const-string v15, "SetObjectAcl"

    invoke-direct {v12, v15, v13, v14}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v14, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/4 v15, 0x7

    const-string v13, "s3:PutObjectAclVersion"

    const-string v11, "SetObjectVersionAcl"

    invoke-direct {v14, v11, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v11, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x8

    const-string v15, "s3:DeleteObject"

    const-string v9, "DeleteObject"

    invoke-direct {v11, v9, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v9, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v15, 0x9

    const-string v13, "s3:DeleteObjectVersion"

    const-string v7, "DeleteObjectVersion"

    invoke-direct {v9, v7, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v7, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0xa

    const-string v15, "s3:ListMultipartUploadParts"

    const-string v5, "ListMultipartUploadParts"

    invoke-direct {v7, v5, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListMultipartUploadParts:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v5, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v15, 0xb

    const-string v13, "s3:AbortMultipartUpload"

    const-string v3, "AbortMultipartUpload"

    invoke-direct {v5, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/amazonaws/auth/policy/actions/S3Actions;->AbortMultipartUpload:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0xc

    const-string v15, "s3:RestoreObject"

    const-string v1, "RestoreObject"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->RestoreObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v15, 0xd

    const-string v13, "s3:CreateBucket"

    move-object/from16 v16, v3

    const-string v3, "CreateBucket"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->CreateBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0xe

    const-string v15, "s3:DeleteBucket"

    move-object/from16 v17, v1

    const-string v1, "DeleteBucket"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v15, 0xf

    const-string v13, "s3:ListBucket"

    move-object/from16 v18, v3

    const-string v3, "ListObjects"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListObjects:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x10

    const-string v15, "s3:ListBucketVersions"

    move-object/from16 v19, v1

    const-string v1, "ListObjectVersions"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListObjectVersions:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v15, 0x11

    const-string v13, "s3:ListAllMyBuckets"

    move-object/from16 v20, v3

    const-string v3, "ListBuckets"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListBuckets:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x12

    const-string v15, "s3:ListBucketMultipartUploads"

    move-object/from16 v21, v1

    const-string v1, "ListBucketMultipartUploads"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListBucketMultipartUploads:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v15, 0x13

    const-string v13, "s3:GetBucketAcl"

    move-object/from16 v22, v3

    const-string v3, "GetBucketAcl"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x14

    const-string v15, "s3:PutBucketAcl"

    move-object/from16 v23, v1

    const-string v1, "SetBucketAcl"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v15, 0x15

    const-string v13, "s3:GetBucketCORS"

    move-object/from16 v24, v3

    const-string v3, "GetBucketCrossOriginConfiguration"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x16

    const-string v15, "s3:PutBucketCORS"

    move-object/from16 v25, v1

    const-string v1, "SetBucketCrossOriginConfiguration"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x17

    const-string v15, "s3:GetBucketVersioning"

    move-object/from16 v26, v3

    const-string v3, "GetBucketVersioningConfiguration"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x18

    const-string v15, "s3:PutBucketVersioning"

    move-object/from16 v27, v1

    const-string v1, "SetBucketVersioningConfiguration"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x19

    const-string v15, "s3:GetBucketRequestPayment"

    move-object/from16 v28, v3

    const-string v3, "GetBucketRequesterPays"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x1a

    const-string v15, "s3:PutBucketRequestPayment"

    move-object/from16 v29, v1

    const-string v1, "SetBucketRequesterPays"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x1b

    const-string v15, "s3:GetBucketLocation"

    move-object/from16 v30, v3

    const-string v3, "GetBucketLocation"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLocation:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x1c

    const-string v15, "s3:GetBucketPolicy"

    move-object/from16 v31, v1

    const-string v1, "GetBucketPolicy"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x1d

    const-string v15, "s3:PutBucketPolicy"

    move-object/from16 v32, v3

    const-string v3, "SetBucketPolicy"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x1e

    const-string v15, "s3:DeleteBucketPolicy"

    move-object/from16 v33, v1

    const-string v1, "DeleteBucketPolicy"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x1f

    const-string v15, "s3:GetBucketNotification"

    move-object/from16 v34, v3

    const-string v3, "GetBucketNotificationConfiguration"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x20

    const-string v15, "s3:PutBucketNotification"

    move-object/from16 v35, v1

    const-string v1, "SetBucketNotificationConfiguration"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x21

    const-string v15, "s3:GetBucketLogging"

    move-object/from16 v36, v3

    const-string v3, "GetBucketLogging"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x22

    const-string v15, "s3:PutBucketLogging"

    move-object/from16 v37, v1

    const-string v1, "SetBucketLogging"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x23

    const-string v15, "s3:GetBucketTagging"

    move-object/from16 v38, v3

    const-string v3, "GetBucketTagging"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x24

    const-string v15, "s3:PutBucketTagging"

    move-object/from16 v39, v1

    const-string v1, "SetBucketTagging"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x25

    const-string v15, "s3:GetBucketWebsite"

    move-object/from16 v40, v3

    const-string v3, "GetBucketWebsiteConfiguration"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x26

    const-string v15, "s3:PutBucketWebsite"

    move-object/from16 v41, v1

    const-string v1, "SetBucketWebsiteConfiguration"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x27

    const-string v15, "s3:DeleteBucketWebsite"

    move-object/from16 v42, v3

    const-string v3, "DeleteBucketWebsiteConfiguration"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x28

    const-string v15, "s3:GetLifecycleConfiguration"

    move-object/from16 v43, v1

    const-string v1, "GetBucketLifecycleConfiguration"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v13, 0x29

    const-string v15, "s3:PutLifecycleConfiguration"

    move-object/from16 v44, v3

    const-string v3, "SetBucketLifecycleConfiguration"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/16 v3, 0x2a

    new-array v3, v3, [Lcom/amazonaws/auth/policy/actions/S3Actions;

    const/4 v13, 0x0

    aput-object v0, v3, v13

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v11, v3, v0

    const/16 v0, 0x9

    aput-object v9, v3, v0

    const/16 v0, 0xa

    aput-object v7, v3, v0

    const/16 v0, 0xb

    aput-object v5, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v21, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    const/16 v0, 0x13

    aput-object v23, v3, v0

    const/16 v0, 0x14

    aput-object v24, v3, v0

    const/16 v0, 0x15

    aput-object v25, v3, v0

    const/16 v0, 0x16

    aput-object v26, v3, v0

    const/16 v0, 0x17

    aput-object v27, v3, v0

    const/16 v0, 0x18

    aput-object v28, v3, v0

    const/16 v0, 0x19

    aput-object v29, v3, v0

    const/16 v0, 0x1a

    aput-object v30, v3, v0

    const/16 v0, 0x1b

    aput-object v31, v3, v0

    const/16 v0, 0x1c

    aput-object v32, v3, v0

    const/16 v0, 0x1d

    aput-object v33, v3, v0

    const/16 v0, 0x1e

    aput-object v34, v3, v0

    const/16 v0, 0x1f

    aput-object v35, v3, v0

    const/16 v0, 0x20

    aput-object v36, v3, v0

    const/16 v0, 0x21

    aput-object v37, v3, v0

    const/16 v0, 0x22

    aput-object v38, v3, v0

    const/16 v0, 0x23

    aput-object v39, v3, v0

    const/16 v0, 0x24

    aput-object v40, v3, v0

    const/16 v0, 0x25

    aput-object v41, v3, v0

    const/16 v0, 0x26

    aput-object v42, v3, v0

    const/16 v0, 0x27

    aput-object v43, v3, v0

    const/16 v0, 0x28

    aput-object v44, v3, v0

    const/16 v0, 0x29

    aput-object v1, v3, v0

    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/S3Actions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/auth/policy/actions/S3Actions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/actions/S3Actions;
    .locals 1

    const-class v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/actions/S3Actions;
    .locals 1

    sget-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/S3Actions;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/actions/S3Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/actions/S3Actions;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/auth/policy/actions/S3Actions;->action:Ljava/lang/String;

    return-object v0
.end method
