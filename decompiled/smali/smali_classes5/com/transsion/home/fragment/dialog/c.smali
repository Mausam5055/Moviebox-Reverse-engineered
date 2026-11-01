.class public final synthetic Lcom/transsion/home/fragment/dialog/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/c;->a:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lcom/transsion/home/fragment/dialog/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/home/fragment/dialog/c;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/c;->a:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/transsion/home/fragment/dialog/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/home/fragment/dialog/c;->c:Landroid/view/View;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->B1(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;ZZJ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
