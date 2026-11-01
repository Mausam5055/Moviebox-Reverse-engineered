.class public final synthetic Lzx/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lzx/i;->b:Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lzx/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lzx/i;->b:Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;

    invoke-static {v0, v1, p1}, Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;->e(Landroid/content/Context;Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;Landroid/view/View;)V

    return-void
.end method
