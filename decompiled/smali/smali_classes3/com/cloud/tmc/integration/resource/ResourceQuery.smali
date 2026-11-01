.class public Lcom/cloud/tmc/integration/resource/ResourceQuery;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appId:Ljava/lang/String;

.field public page:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public queryParameterNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/resource/ResourceQuery;->appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/integration/resource/ResourceQuery;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/resource/ResourceQuery;->page:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/integration/resource/ResourceQuery;->queryParameterNames:Ljava/util/Set;

    return-void
.end method
