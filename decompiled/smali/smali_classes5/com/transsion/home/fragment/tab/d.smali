.class public final synthetic Lcom/transsion/home/fragment/tab/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/d;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iput p2, p0, Lcom/transsion/home/fragment/tab/d;->b:I

    iput-object p3, p0, Lcom/transsion/home/fragment/tab/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/d;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iget v1, p0, Lcom/transsion/home/fragment/tab/d;->b:I

    iget-object v2, p0, Lcom/transsion/home/fragment/tab/d;->c:Ljava/lang/String;

    check-cast p1, Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->b(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
