.class public final synthetic Lsr/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lsr/r$a;

.field public final synthetic b:Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;


# direct methods
.method public synthetic constructor <init>(Lsr/r$a;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr/q;->a:Lsr/r$a;

    iput-object p2, p0, Lsr/q;->b:Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lsr/q;->a:Lsr/r$a;

    iget-object v1, p0, Lsr/q;->b:Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    invoke-static {v0, v1, p1}, Lsr/r$a;->g(Lsr/r$a;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;Landroid/view/View;)V

    return-void
.end method
