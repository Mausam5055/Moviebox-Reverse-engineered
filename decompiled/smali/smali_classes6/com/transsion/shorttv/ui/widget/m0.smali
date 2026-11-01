.class public final synthetic Lcom/transsion/shorttv/ui/widget/m0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/m0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/m0;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/m0;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/m0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/m0;->b:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/m0;->c:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
