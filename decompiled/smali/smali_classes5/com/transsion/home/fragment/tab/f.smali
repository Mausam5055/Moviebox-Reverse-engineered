.class public final synthetic Lcom/transsion/home/fragment/tab/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/f;->a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/f;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/transsion/home/fragment/tab/f;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/transsion/home/fragment/tab/f;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Lcom/transsion/home/fragment/tab/f;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/f;->a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/f;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/transsion/home/fragment/tab/f;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/transsion/home/fragment/tab/f;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, p0, Lcom/transsion/home/fragment/tab/f;->e:Lkotlin/jvm/functions/Function0;

    move-object v5, p1

    check-cast v5, Lkotlin/Pair;

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->e(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
