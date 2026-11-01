.class public Lp5/a;
.super Ljava/lang/Object;


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:I

.field public C:Landroid/content/Context;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:F

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Landroid/graphics/Typeface;

.field public X:Lcom/contrarywind/view/WheelView$DividerType;

.field public a:Lq5/c;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:[Z

.field public g:Ljava/util/Calendar;

.field public h:Ljava/util/Calendar;

.field public i:Ljava/util/Calendar;

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp5/a;->b:Z

    iput-boolean v0, p0, Lp5/a;->c:Z

    iput-boolean v0, p0, Lp5/a;->d:Z

    iput-boolean v0, p0, Lp5/a;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x6

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lp5/a;->f:[Z

    iput-boolean v0, p0, Lp5/a;->l:Z

    iput-boolean v0, p0, Lp5/a;->m:Z

    const/16 v0, 0x11

    iput v0, p0, Lp5/a;->B:I

    const v2, -0xfa8201

    iput v2, p0, Lp5/a;->G:I

    iput v2, p0, Lp5/a;->H:I

    const/high16 v2, -0x1000000

    iput v2, p0, Lp5/a;->I:I

    const/4 v2, -0x1

    iput v2, p0, Lp5/a;->J:I

    const v3, -0xa0a0b

    iput v3, p0, Lp5/a;->K:I

    iput v0, p0, Lp5/a;->L:I

    const/16 v0, 0x12

    iput v0, p0, Lp5/a;->M:I

    iput v0, p0, Lp5/a;->N:I

    const v0, -0x666667

    iput v0, p0, Lp5/a;->O:I

    const v0, -0xcccccd

    iput v0, p0, Lp5/a;->P:I

    const v0, -0x111112

    iput v0, p0, Lp5/a;->Q:I

    iput v2, p0, Lp5/a;->R:I

    const v0, 0x3fcccccd    # 1.6f

    iput v0, p0, Lp5/a;->S:F

    iput-boolean v1, p0, Lp5/a;->U:Z

    iput-boolean v1, p0, Lp5/a;->V:Z

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lp5/a;->W:Landroid/graphics/Typeface;

    sget-object v0, Lcom/contrarywind/view/WheelView$DividerType;->FILL:Lcom/contrarywind/view/WheelView$DividerType;

    iput-object v0, p0, Lp5/a;->X:Lcom/contrarywind/view/WheelView$DividerType;

    if-ne p1, v1, :cond_0

    sget p1, Lcom/bigkoo/pickerview/R$layout;->pickerview_options:I

    iput p1, p0, Lp5/a;->z:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/bigkoo/pickerview/R$layout;->pickerview_time:I

    iput p1, p0, Lp5/a;->z:I

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
