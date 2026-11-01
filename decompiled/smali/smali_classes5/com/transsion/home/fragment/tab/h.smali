.class public final synthetic Lcom/transsion/home/fragment/tab/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

.field public final synthetic b:Lcom/transsion/home/bean/HomePreferencesConfig;

.field public final synthetic c:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/h;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/h;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    iput-object p3, p0, Lcom/transsion/home/fragment/tab/h;->c:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/h;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/h;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    iget-object v2, p0, Lcom/transsion/home/fragment/tab/h;->c:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-static {v0, v1, v2}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
