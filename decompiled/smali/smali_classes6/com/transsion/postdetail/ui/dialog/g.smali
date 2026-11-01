.class public final synthetic Lcom/transsion/postdetail/ui/dialog/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:F

.field public final synthetic d:Lcom/transsion/postdetail/ui/dialog/h;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroid/view/View;FLcom/transsion/postdetail/ui/dialog/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/dialog/g;->a:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/dialog/g;->b:Landroid/view/View;

    iput p3, p0, Lcom/transsion/postdetail/ui/dialog/g;->c:F

    iput-object p4, p0, Lcom/transsion/postdetail/ui/dialog/g;->d:Lcom/transsion/postdetail/ui/dialog/h;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/g;->a:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/dialog/g;->b:Landroid/view/View;

    iget v2, p0, Lcom/transsion/postdetail/ui/dialog/g;->c:F

    iget-object v3, p0, Lcom/transsion/postdetail/ui/dialog/g;->d:Lcom/transsion/postdetail/ui/dialog/h;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/transsion/postdetail/ui/dialog/h;->f(Lkotlin/jvm/internal/Ref$FloatRef;Landroid/view/View;FLcom/transsion/postdetail/ui/dialog/h;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
