.class public final synthetic Lcom/transsion/home/tv/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lgl/i;


# direct methods
.method public synthetic constructor <init>(Lgl/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/c;->a:Lgl/i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/c;->a:Lgl/i;

    invoke-static {v0, p1}, Lcom/transsion/home/tv/TvCountrySelectDialog;->p0(Lgl/i;Landroid/view/View;)V

    return-void
.end method
