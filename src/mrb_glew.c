#include <mruby.h>
#include <mruby/class.h>
#include <mruby/data.h>
#include <GL/glew.h>

static struct RClass *glew_module;

static mrb_value
init(mrb_state *mrb, mrb_value klass)
{
  if (glewInit() != GLEW_OK) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "GLEW has failed to initialize.");
  }
  return klass;
}

void
mrb_mruby_glew_gem_init(mrb_state* mrb)
{
  glew_module = mrb_define_module(mrb, "GLEW");
  mrb_define_class_method(mrb, glew_module, "init", init, MRB_ARGS_NONE());
}

void
mrb_mruby_glew_gem_final(mrb_state* mrb)
{
}
