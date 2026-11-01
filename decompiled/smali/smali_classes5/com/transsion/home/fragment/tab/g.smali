.class public final synthetic Lcom/transsion/home/fragment/tab/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

.field public final synthetic b:Lcom/transsion/home/bean/HomePreferencesConfig;

.field public final synthetic c:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/g;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/g;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    iput-object p3, p0, Lcom/transsion/home/fragment/tab/g;->c:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/g;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/g;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    iget-object v2, p0, Lcom/transsion/home/fragment/tab/g;->c:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
