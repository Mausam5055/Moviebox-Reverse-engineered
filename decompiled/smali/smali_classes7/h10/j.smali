.class final Lh10/j;
.super Lh10/n;


# direct methods
.method constructor <init>(Lh10/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lh10/n;-><init>(Lh10/q;)V

    return-void
.end method


# virtual methods
.method d(IILh10/w;Lh10/x;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lh10/n;->d(IILh10/w;Lh10/x;)V

    new-instance p1, Lh10/n;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lh10/n;-><init>(Lh10/q;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p4, p1, p2}, Lh10/n;->l(Lh10/x;Lh10/n;I)Z

    invoke-virtual {p0, p1}, Lh10/n;->c(Lh10/n;)V

    return-void
.end method
