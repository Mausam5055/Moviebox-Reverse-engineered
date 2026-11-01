.class public final synthetic Landroidx/work/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$b;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Landroidx/work/f0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/lifecycle/b0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/y;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/work/y;->b:Landroidx/work/f0;

    iput-object p3, p0, Landroidx/work/y;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/work/y;->d:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/work/y;->e:Landroidx/lifecycle/b0;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/work/y;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/work/y;->b:Landroidx/work/f0;

    iget-object v2, p0, Landroidx/work/y;->c:Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/y;->d:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Landroidx/work/y;->e:Landroidx/lifecycle/b0;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroidx/work/a0;->a(Ljava/util/concurrent/Executor;Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
