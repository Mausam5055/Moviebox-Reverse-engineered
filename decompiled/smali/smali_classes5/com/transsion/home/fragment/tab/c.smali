.class public final synthetic Lcom/transsion/home/fragment/tab/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/c;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iput p2, p0, Lcom/transsion/home/fragment/tab/c;->b:I

    iput-object p3, p0, Lcom/transsion/home/fragment/tab/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/home/fragment/tab/c;->d:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/c;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iget v1, p0, Lcom/transsion/home/fragment/tab/c;->b:I

    iget-object v2, p0, Lcom/transsion/home/fragment/tab/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/home/fragment/tab/c;->d:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    check-cast p1, Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->a(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
