.class public abstract Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;,
        Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;,
        Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0007\u0008\tB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004\u0082\u0001\u0003\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;",
        "",
        "()V",
        "isClosed",
        "",
        "isOpen",
        "isPushAll",
        "Closed",
        "Open",
        "PushAll",
        "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;",
        "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;",
        "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;",
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

    invoke-direct {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;-><init>()V

    return-void
.end method


# virtual methods
.method public final isClosed()Z
    .locals 1

    instance-of v0, p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    return v0
.end method

.method public final isOpen()Z
    .locals 1

    instance-of v0, p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    return v0
.end method

.method public final isPushAll()Z
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;->INSTANCE:Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
