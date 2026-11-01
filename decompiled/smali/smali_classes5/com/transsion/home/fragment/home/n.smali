.class public final synthetic Lcom/transsion/home/fragment/home/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/home/HomeFragment;

.field public final synthetic b:Lcom/transsion/home/bean/HomePreferencesConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/home/HomeFragment;Lcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/n;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/home/n;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/home/n;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/home/n;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/home/HomeFragment;->o0(Lcom/transsion/home/fragment/home/HomeFragment;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
