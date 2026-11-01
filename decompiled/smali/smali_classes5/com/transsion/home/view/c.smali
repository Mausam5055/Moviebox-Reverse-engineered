.class public final synthetic Lcom/transsion/home/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/home/view/CustomTabAdView;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final synthetic c:Lcom/transsion/home/bean/HomeTabItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/view/CustomTabAdView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/home/bean/HomeTabItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/view/c;->a:Lcom/transsion/home/view/CustomTabAdView;

    iput-object p2, p0, Lcom/transsion/home/view/c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lcom/transsion/home/view/c;->c:Lcom/transsion/home/bean/HomeTabItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsion/home/view/c;->a:Lcom/transsion/home/view/CustomTabAdView;

    iget-object v1, p0, Lcom/transsion/home/view/c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, p0, Lcom/transsion/home/view/c;->c:Lcom/transsion/home/bean/HomeTabItem;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/transsion/home/view/CustomTabAdView;->c(Lcom/transsion/home/view/CustomTabAdView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/home/bean/HomeTabItem;ZZJ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
