.class public final Lcom/cloud/hisavana/sdk/w4;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/r$a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/r$a;)V
    .locals 1

    const-string v0, "admListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w4;->a:Lcom/cloud/hisavana/sdk/r$a;

    const-string p1, "AdmActionBridge"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w4;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/cloud/hisavana/sdk/w4;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/w4;->b(Ljava/lang/String;Lcom/cloud/hisavana/sdk/w4;)V

    return-void
.end method

.method private static final b(Ljava/lang/String;Lcom/cloud/hisavana/sdk/w4;)V
    .locals 4

    const-string v0, "$path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/w4;->a:Lcom/cloud/hisavana/sdk/r$a;

    const/16 v0, 0xbbf

    invoke-interface {p1, p0, v0}, Lcom/cloud/hisavana/sdk/r$a;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final loadMaterialError(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w4;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMaterialError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/u4;

    invoke-direct {v0, p1, p0}, Lcom/cloud/hisavana/sdk/u4;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/w4;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method
