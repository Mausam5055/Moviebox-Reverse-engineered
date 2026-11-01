.class public final synthetic Lmb/y;
.super Ljava/lang/Object;

# interfaces
.implements Lic/a$a;


# instance fields
.field public final synthetic a:Lic/a$a;

.field public final synthetic b:Lic/a$a;


# direct methods
.method public synthetic constructor <init>(Lic/a$a;Lic/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/y;->a:Lic/a$a;

    iput-object p2, p0, Lmb/y;->b:Lic/a$a;

    return-void
.end method


# virtual methods
.method public final a(Lic/b;)V
    .locals 2

    iget-object v0, p0, Lmb/y;->a:Lic/a$a;

    iget-object v1, p0, Lmb/y;->b:Lic/a$a;

    invoke-static {v0, v1, p1}, Lmb/z;->c(Lic/a$a;Lic/a$a;Lic/b;)V

    return-void
.end method
