.class public final synthetic Lcom/transsion/home/fragment/home/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/home/HomeFragment;

.field public final synthetic b:Lcom/transsion/home/bean/HomePreferencesConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/home/HomeFragment;Lcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/o;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/home/o;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/home/o;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/home/o;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/home/HomeFragment;->l0(Lcom/transsion/home/fragment/home/HomeFragment;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
