.class public Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;
.super Lcom/amazonaws/auth/AWSCredentialsProviderChain;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/amazonaws/auth/SystemPropertiesCredentialsProvider;

    invoke-direct {v0}, Lcom/amazonaws/auth/SystemPropertiesCredentialsProvider;-><init>()V

    new-instance v1, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;

    invoke-direct {v1}, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amazonaws/auth/AWSCredentialsProvider;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/AWSCredentialsProviderChain;-><init>([Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method
