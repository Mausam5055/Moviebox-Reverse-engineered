.class public Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/common/bean/TInnerAdRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;)Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/hisavana/common/bean/TInnerAdRequestBody;
    .locals 2

    new-instance v0, Lcom/hisavana/common/bean/TInnerAdRequestBody;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisavana/common/bean/TInnerAdRequestBody;-><init>(Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;Lcom/hisavana/common/bean/TInnerAdRequestBody$1;)V

    return-object v0
.end method

.method public setAdListener(Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;)Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    return-object p0
.end method
