.class public final synthetic Lcom/transsion/home/fragment/tab/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/e;->a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/e;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/e;->a:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/e;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    check-cast p1, Lkotlin/Pair;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->d(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
