.class public final Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/abtestkit/bean/ABVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;",
        "",
        "()V",
        "initFromSubExpInfo",
        "Lcom/cloud/hisavana/abtestkit/bean/ABVariant;",
        "layerId",
        "",
        "info",
        "Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;",
        "(Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariant;",
        "abtestkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initFromSubExpInfo(Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariant;
    .locals 3

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    invoke-virtual {p2}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getExpId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getVarId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getInfo()Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    return-object v0
.end method
