.class public Lcom/transsion/api/gateway/bean/MetricsRequestBean;
.super Ljava/lang/Object;


# instance fields
.field public collectType:Ljava/lang/String;
    .annotation runtime Lfm/a;
        name = "collectType"
    .end annotation
.end field

.field public commonTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lfm/a;
        name = "commonTags"
    .end annotation
.end field

.field public db:Ljava/lang/String;
    .annotation runtime Lfm/a;
        name = "db"
    .end annotation
.end field

.field public expireSeconds:I
    .annotation runtime Lfm/a;
        name = "expireSeconds"
    .end annotation
.end field

.field public metricsName:Ljava/lang/String;
    .annotation runtime Lfm/a;
        name = "metricsName"
    .end annotation
.end field

.field public specificTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/api/gateway/bean/SpecificTagBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lfm/a;
        name = "specificTags"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
