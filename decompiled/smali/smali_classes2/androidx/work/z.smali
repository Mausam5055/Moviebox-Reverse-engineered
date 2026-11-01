.class public final synthetic Landroidx/work/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/f0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/lifecycle/b0;

.field public final synthetic e:Landroidx/concurrent/futures/CallbackToFutureAdapter$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/z;->a:Landroidx/work/f0;

    iput-object p2, p0, Landroidx/work/z;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/work/z;->c:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/work/z;->d:Landroidx/lifecycle/b0;

    iput-object p5, p0, Landroidx/work/z;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/work/z;->a:Landroidx/work/f0;

    iget-object v1, p0, Landroidx/work/z;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/z;->c:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Landroidx/work/z;->d:Landroidx/lifecycle/b0;

    iget-object v4, p0, Landroidx/work/z;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$a;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/work/a0;->b(Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)V

    return-void
.end method
