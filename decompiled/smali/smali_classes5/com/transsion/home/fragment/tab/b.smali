.class public final synthetic Lcom/transsion/home/fragment/tab/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/b;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iput p2, p0, Lcom/transsion/home/fragment/tab/b;->b:I

    iput-object p3, p0, Lcom/transsion/home/fragment/tab/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/b;->a:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iget v1, p0, Lcom/transsion/home/fragment/tab/b;->b:I

    iget-object v2, p0, Lcom/transsion/home/fragment/tab/b;->c:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Lcom/transsion/home/bean/HomePreferencesConfig;

    move-object v4, p2

    check-cast v4, Ljava/util/List;

    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->c(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
