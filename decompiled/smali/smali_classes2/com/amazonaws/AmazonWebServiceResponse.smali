.class public Lcom/amazonaws/AmazonWebServiceResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/amazonaws/ResponseMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->b:Lcom/amazonaws/ResponseMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/ResponseMetadata;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Lcom/amazonaws/ResponseMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceResponse;->b:Lcom/amazonaws/ResponseMetadata;

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceResponse;->a:Ljava/lang/Object;

    return-void
.end method
