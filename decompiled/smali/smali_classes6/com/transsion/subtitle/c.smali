.class public final synthetic Lcom/transsion/subtitle/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/VideoSubtitleControl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->b(Lcom/transsion/subtitle/VideoSubtitleControl;Landroid/view/View;)V

    return-void
.end method
