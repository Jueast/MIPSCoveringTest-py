cal_r = {"use":{'rs':1, 'rt':1},
         "new":{'E':{'rd':1},
                'M':{'rd':0}
               }
        }

cal_i = {"use":{'rs':1},
         "new":{'E':{'rt':1},
                'M':{'rt':0}
               }
        }

cal_s = {"use":{'rt':1},
         "new":{'E':{'rd':1},
                'M':{'rd':0}
               }
        }

load =  {"use":{'rs':1},
         "new":{'E':{'rt':2},
                'M':{'rt':2}
               }
        }

store = {"use":{'base':1, 'rt':2},
         "new":{}
        }

j_r = { "use":{'rs':0},
        "new":{}
      }
b_type = {"use":{'rs':0, 'rt':0},
         "new":{}
        }
link = {"use":{},
        "new":{'E':{'$ra':0},
               'M':{'$ra':0}}}
j_o = {"use":{},
     "new":{}}
j_r_link = {"use":{'rs':0},
        "new":{'E':{'rd':0},
               'M':{'rd':0}}}
mf_type = {"use":{},
        "new":{'E':{'rd':0},
               'M':{'rd':0}}}
mt_type = {"use":{'rs':0},
        "new":{'E':{'hi':0},
               'M':{'hi':0}}}
md_type = {"use":{'rs':1, 'rt':1},
        "new":{'E':{'hi':1, 'lo':1},
               'M':{'hi':0, 'lo':0}}}
mfc0 = {"use":{},
        "new":{'E':{'rt':0},
               'M':{'rt':0}}}
mtc0 = {"use":{'rt':0},
        "new":{'E':{'cp0':0},
               'M':{'cp0':0}}}