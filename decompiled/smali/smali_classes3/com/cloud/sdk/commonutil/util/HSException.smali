.class public final Lcom/cloud/sdk/commonutil/util/HSException;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/sdk/commonutil/util/HSException$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0011\u0018\u0000 \u00182\u00060\u0001j\u0002`\u0002:\u0001\u0019B\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B%\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0007\u0010\u000bR\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R*\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00058\u0006@DX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cloud/sdk/commonutil/util/HSException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "",
        "errorCode",
        "",
        "desc",
        "<init>",
        "(ILjava/lang/String;)V",
        "",
        "cause",
        "(ILjava/lang/String;Ljava/lang/Throwable;)V",
        "I",
        "getErrorCode",
        "()I",
        "setErrorCode",
        "(I)V",
        "<set-?>",
        "description",
        "Ljava/lang/String;",
        "getDescription",
        "()Ljava/lang/String;",
        "setDescription",
        "(Ljava/lang/String;)V",
        "Companion",
        "a",
        "commonutil_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/sdk/commonutil/util/HSException$a;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private description:Ljava/lang/String;

.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/sdk/commonutil/util/HSException$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSException$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSException;->Companion:Lcom/cloud/sdk/commonutil/util/HSException$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/cloud/sdk/commonutil/util/HSException;->errorCode:I

    iput-object p2, p0, Lcom/cloud/sdk/commonutil/util/HSException;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/cloud/sdk/commonutil/util/HSException;->description:Ljava/lang/String;

    iput p1, p0, Lcom/cloud/sdk/commonutil/util/HSException;->errorCode:I

    invoke-super {p0, p3}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/util/HSException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/cloud/sdk/commonutil/util/HSException;->errorCode:I

    return v0
.end method

.method protected final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/sdk/commonutil/util/HSException;->description:Ljava/lang/String;

    return-void
.end method

.method public final setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/sdk/commonutil/util/HSException;->errorCode:I

    return-void
.end method
