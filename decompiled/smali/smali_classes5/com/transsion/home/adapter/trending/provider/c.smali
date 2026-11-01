.class public final synthetic Lcom/transsion/home/adapter/trending/provider/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/e;

.field public final synthetic b:Lcom/transsion/home/bean/HomePreferencesConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/c;->a:Lcom/transsion/home/adapter/trending/provider/e;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/c;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/c;->a:Lcom/transsion/home/adapter/trending/provider/e;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/c;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/trending/provider/e;->z(Lcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesConfig;Landroid/view/View;)V

    return-void
.end method
