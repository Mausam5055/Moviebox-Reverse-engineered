.class public final Lcom/transsion/publish/bean/PublishState;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/bean/PublishState$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/publish/bean/PublishState;",
        "Ljava/io/Serializable;",
        "",
        "state",
        "<init>",
        "(I)V",
        "I",
        "getState",
        "()I",
        "setState",
        "Companion",
        "a",
        "Publish_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/publish/bean/PublishState$a;

.field public static final HIDE:I = 0x2

.field public static final SHOW:I = 0x1


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/publish/bean/PublishState$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/publish/bean/PublishState$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/publish/bean/PublishState;->Companion:Lcom/transsion/publish/bean/PublishState$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/publish/bean/PublishState;->state:I

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/bean/PublishState;->state:I

    return v0
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/bean/PublishState;->state:I

    return-void
.end method
