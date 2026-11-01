.class public Le8/b;
.super Ljava/lang/Object;

# interfaces
.implements Le8/c;


# instance fields
.field private a:Lr7/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lb8/a;->f()Lr7/d;

    move-result-object v0

    iput-object v0, p0, Le8/b;->a:Lr7/d;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Le8/b;->a:Lr7/d;

    invoke-interface {v0, p1, p2, p3}, Lr7/d;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
