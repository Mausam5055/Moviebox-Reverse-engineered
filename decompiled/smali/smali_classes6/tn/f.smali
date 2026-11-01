.class public final synthetic Ltn/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ltn/e;

.field public final synthetic c:Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

.field public final synthetic d:Ltn/e$b;


# direct methods
.method public synthetic constructor <init>(ILtn/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Ltn/e$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltn/f;->a:I

    iput-object p2, p0, Ltn/f;->b:Ltn/e;

    iput-object p3, p0, Ltn/f;->c:Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    iput-object p4, p0, Ltn/f;->d:Ltn/e$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Ltn/f;->a:I

    iget-object v1, p0, Ltn/f;->b:Ltn/e;

    iget-object v2, p0, Ltn/f;->c:Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    iget-object v3, p0, Ltn/f;->d:Ltn/e$b;

    invoke-static {v0, v1, v2, v3, p1}, Ltn/e$b;->i(ILtn/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Ltn/e$b;Landroid/view/View;)V

    return-void
.end method
