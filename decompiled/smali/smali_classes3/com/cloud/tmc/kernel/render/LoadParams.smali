.class public Lcom/cloud/tmc/kernel/render/LoadParams;
.super Ljava/lang/Object;


# instance fields
.field public appId:Ljava/lang/String;

.field public beforeScript:Ljava/lang/String;

.field public forceLoad:Z

.field public isReload:Z

.field public pagePath:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/render/LoadParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->isReload:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->isReload:Z

    iget-boolean v0, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->forceLoad:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->forceLoad:Z

    iget-object v0, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadParams{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
