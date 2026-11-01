.class Lwa/c$c;
.super Lwa/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lwa/c$b;-><init>(Lwa/c$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lwa/c$a;)V
    .locals 0

    invoke-direct {p0}, Lwa/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method c(Lwa/b;)Landroid/window/OnBackInvokedCallback;
    .locals 1

    new-instance v0, Lwa/c$c$a;

    invoke-direct {v0, p0, p1}, Lwa/c$c$a;-><init>(Lwa/c$c;Lwa/b;)V

    return-object v0
.end method
