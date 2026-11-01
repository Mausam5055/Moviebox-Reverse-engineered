.class final Lwd/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lid/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/e$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lwd/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lwd/e$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lwd/e$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lwd/e$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lwd/e$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwd/e$b;->a:Ljava/lang/String;

    return-object v0
.end method
