.class public Lp4/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:F

.field private e:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lp4/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lp4/b;->c:Ljava/lang/String;

    iput p4, p0, Lp4/b;->d:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp4/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp4/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp4/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lp4/b;->e:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lp4/b;->e:Landroid/graphics/Typeface;

    return-void
.end method
