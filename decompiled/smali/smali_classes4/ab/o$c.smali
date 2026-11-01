.class final Lab/o$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lab/n;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lab/o$b;

.field public final e:F


# direct methods
.method constructor <init>(Lab/n;FLandroid/graphics/RectF;Lab/o$b;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lab/o$c;->d:Lab/o$b;

    iput-object p1, p0, Lab/o$c;->a:Lab/n;

    iput p2, p0, Lab/o$c;->e:F

    iput-object p3, p0, Lab/o$c;->c:Landroid/graphics/RectF;

    iput-object p5, p0, Lab/o$c;->b:Landroid/graphics/Path;

    return-void
.end method
