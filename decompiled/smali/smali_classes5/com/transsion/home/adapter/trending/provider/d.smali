.class public final synthetic Lcom/transsion/home/adapter/trending/provider/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/home/adapter/trending/provider/e;

.field public final synthetic c:Lcom/transsion/home/bean/HomePreferencesContentItem;

.field public final synthetic d:Landroid/widget/LinearLayout;

.field public final synthetic e:I

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroid/widget/LinearLayout;

.field public final synthetic h:Landroid/widget/ImageView;

.field public final synthetic i:Lcom/transsion/baseui/widget/GradientTextView;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/widget/LinearLayout;ILandroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/home/adapter/trending/provider/d;->a:Z

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/d;->b:Lcom/transsion/home/adapter/trending/provider/e;

    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/d;->c:Lcom/transsion/home/bean/HomePreferencesContentItem;

    iput-object p4, p0, Lcom/transsion/home/adapter/trending/provider/d;->d:Landroid/widget/LinearLayout;

    iput p5, p0, Lcom/transsion/home/adapter/trending/provider/d;->e:I

    iput-object p6, p0, Lcom/transsion/home/adapter/trending/provider/d;->f:Landroid/content/Context;

    iput-object p7, p0, Lcom/transsion/home/adapter/trending/provider/d;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/transsion/home/adapter/trending/provider/d;->h:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/transsion/home/adapter/trending/provider/d;->i:Lcom/transsion/baseui/widget/GradientTextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget-boolean v0, p0, Lcom/transsion/home/adapter/trending/provider/d;->a:Z

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/d;->b:Lcom/transsion/home/adapter/trending/provider/e;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/d;->c:Lcom/transsion/home/bean/HomePreferencesContentItem;

    iget-object v3, p0, Lcom/transsion/home/adapter/trending/provider/d;->d:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/transsion/home/adapter/trending/provider/d;->e:I

    iget-object v5, p0, Lcom/transsion/home/adapter/trending/provider/d;->f:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/home/adapter/trending/provider/d;->g:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/transsion/home/adapter/trending/provider/d;->h:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/transsion/home/adapter/trending/provider/d;->i:Lcom/transsion/baseui/widget/GradientTextView;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/transsion/home/adapter/trending/provider/e;->y(ZLcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/widget/LinearLayout;ILandroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;)V

    return-void
.end method
