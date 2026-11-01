.class public final Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.miniapp.widget.TabBarItemView$requestDrawable$1"
    f = "TabBarView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/widget/OooO0OO;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final OooO00o(Lkotlin/jvm/functions/Function1;Ljava/io/File;)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkotlinx/coroutines/n0;

    move-object v5, p2

    check-cast v5, Lkotlin/coroutines/Continuation;

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/cloud/tmc/miniapp/widget/o;

    invoke-direct {v2, v1, p1}, Lcom/cloud/tmc/miniapp/widget/o;-><init>(Lkotlin/jvm/functions/Function1;Ljava/io/File;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
