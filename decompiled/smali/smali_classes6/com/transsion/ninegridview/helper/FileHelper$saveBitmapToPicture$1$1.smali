.class final Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/helper/FileHelper;->r(Landroidx/appcompat/app/AppCompatActivity;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ninegridview.helper.FileHelper$saveBitmapToPicture$1$1"
    f = "FileHelper.kt"
    l = {
        0x154,
        0x15b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fileName:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;

    iget-object v1, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    iget-object v1, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$fileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/ninegridview/helper/FileHelper;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v2, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1$1;

    iget-object v4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-direct {v2, v4, v1, v11}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->label:I

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    iget-object v4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v6, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$fileName:Ljava/lang/String;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v10}, Lcom/transsion/ninegridview/helper/FileHelper;->v(Lcom/transsion/ninegridview/helper/FileHelper;Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Landroid/net/Uri;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v3, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1$2;

    iget-object v4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-direct {v3, v4, v1, v11}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1$2;-><init>(Lkotlin/jvm/functions/Function2;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
