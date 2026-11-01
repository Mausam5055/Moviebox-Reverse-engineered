.class public Lph/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lph/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lph/b;

.field private b:Lph/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lph/b;

    invoke-direct {v0}, Lph/b;-><init>()V

    iput-object v0, p0, Lph/c$a;->a:Lph/b;

    new-instance v0, Lph/c;

    invoke-direct {v0}, Lph/c;-><init>()V

    iput-object v0, p0, Lph/c$a;->b:Lph/c;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lph/c$a;->a:Lph/b;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lph/c$a;->b:Lph/c;

    iget-object v1, p0, Lph/c$a;->a:Lph/b;

    invoke-virtual {v0, v1}, Lph/c;->b(Ljava/lang/CharSequence;)Lph/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lph/c;
    .locals 1

    invoke-direct {p0}, Lph/c$a;->a()V

    iget-object v0, p0, Lph/c$a;->b:Lph/c;

    return-object v0
.end method

.method public c(I)Lph/c$a;
    .locals 1

    iget-object v0, p0, Lph/c$a;->a:Lph/b;

    invoke-virtual {v0, p1}, Lph/b;->c(I)Lph/b;

    return-object p0
.end method

.method public d(I)Lph/c$a;
    .locals 1

    iget-object v0, p0, Lph/c$a;->a:Lph/b;

    invoke-virtual {v0, p1}, Lph/b;->d(I)Lph/b;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lph/c$a;
    .locals 1

    invoke-direct {p0}, Lph/c$a;->a()V

    new-instance v0, Lph/b;

    invoke-direct {v0, p1}, Lph/b;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lph/c$a;->a:Lph/b;

    return-object p0
.end method

.method public f(Landroid/graphics/Typeface;)Lph/c$a;
    .locals 1

    iget-object v0, p0, Lph/c$a;->a:Lph/b;

    invoke-virtual {v0, p1}, Lph/b;->e(Landroid/graphics/Typeface;)Lph/b;

    return-object p0
.end method
