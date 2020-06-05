package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import model.AudioBookBean;
import model.AuthorBean;
import model.BookBean;
import model.CategoryBean;
import model.EvalBookBean;
import model.EvaluationBean;
import model.InsertBookBean;
import model.MemberBean;
import model.PublisherBean;
import model.RentalBean;
import model.SubscribeBean;
import model.SubscribeListBean;
import model.WishListBean;

// Subscribe, SubscribeList �μ�Ʈ �޼ҵ�� ���� ���� �� ������� �����
public class AppleDao {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		sqlSessionFactory = SqlSessionFactorymanger.getSqlSessionFactory();
	}

	public static List<CategoryBean> selectcategory() {
		SqlSession sqlsession = null;
		try {
			sqlsession = sqlSessionFactory.openSession();
			return sqlsession.selectList("selectcategory");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		} finally {
			try {
				if (sqlsession != null)
					sqlsession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		} // finally
		return null;
	}

	public static Integer getTotalRow(HashMap<String, Object> map) {
		return sqlSessionFactory.openSession().selectOne("getTotalRow", map);
	}
	
	 public static List<MemberBean> selectmember() {
	      SqlSession sqlSession = null;
	      try {
	         sqlSession = sqlSessionFactory.openSession();
	         return sqlSessionFactory.openSession().selectList("selectmember");
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	      } finally {
	         try {
	            sqlSession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      }
	      return null;
	   }

	 public static boolean idcheckProcess(String id,String pw) {
	      SqlSession sqlSession = null;      
	      try {
	         sqlSession = sqlSessionFactory.openSession();
	         String dbPass= sqlSession.selectOne("idcheckProcess",id);
	         return dbPass!=null&&dbPass.equals(pw.trim());
	      } catch (Exception e) {
	         // TODO: handle  exception
	         e.printStackTrace();
	      }
	      return false;
	   }
	 
	public static List<EvalBookBean> selectEval(String code) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSessionFactory.openSession().selectList("selectEval", code);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return null;
	}
	public static boolean searchEval(String id, String bookcode) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			
			List<String>list = sqlSession.selectList("searchEval",id);
			System.out.println(list);
			
			for (String str : list) {
				
				return str.equals(bookcode);
				
				/*if(str.equals(bookcode)) {
					return true;
				}else {
					return false;
				}*/
			}
			//true
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return false;
	}

/////////////ȸ�� ���� Ŭ�� �� DB�� �ö󰡵���/////////////
	public static void insertMember(MemberBean bean) {// ȸ�� ���̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertMember", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	

	public static boolean idcheck(String id, String pw) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			String check = sqlSession.selectOne("idcheck", id);
			return check != null && check.equals(pw.trim());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}

	///////////// �����ڰ������� �־�� �ϴ� insert/////////////
	public static void insertBook(BookBean bean) {// å���̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertBook", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	public static void insertPublisher(PublisherBean bean) {// ���ǻ����̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertPublisher", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	public static void insertCategory(CategoryBean bean) {// �帣���̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertCategory", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	public static void insertAudioBook(AudioBookBean bean) {// ������� ���̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertAudioBook", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	public static void insertAuthor(AuthorBean bean) {// �۰����̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertAuthor", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	public static void insertSubscribe(SubscribeBean bean) {// ������ ���̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertSubscribe", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	///////////// ȸ���������� �־�� �ϴ� insert/////////////
	public static void insertRental(RentalBean bean) {// ���� å ���̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertRental", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	
	public static void insertEvaluation(EvaluationBean bean) {// ���� ���̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertEvaluation", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	public static void insertWishList(WishListBean bean) {// ���ϱ� ���̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertWishList", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	///////////// ȸ������ ���� â���� �ִ� �����̺�/////////////
	public static void insertSubscribeList(SubscribeListBean bean) {// ���ϱ� ���̺�
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertSubscribeList", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	public static List<BookBean> selectRead(String code) {
		SqlSession sqlsession = null;
		try {
			sqlsession = sqlSessionFactory.openSession();
			return sqlsession.selectList("selectRead", code);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		} finally {
			try {
				if (sqlsession != null)
					sqlsession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		} // finally
		return null;
	}

	public static List<InsertBookBean> selectBookbean() {

		SqlSession sqlsession = null;
		try {
			sqlsession = sqlSessionFactory.openSession();
			return sqlsession.selectList("selectBookbean");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		} finally {
			try {
				if (sqlsession != null)
					sqlsession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		} // finally
		return null;
	}

	public static List<InsertBookBean> searchBookBean(HashMap<String, Object> map) {
		SqlSession sqlsession = null;
		try {
			sqlsession = sqlSessionFactory.openSession();
			return sqlsession.selectList("searchBookBean", map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		} finally {
			try {
				if (sqlsession != null)
					sqlsession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		} // finally
		return null;
	}
	

	   /// yunji

	   public static List<BookBean> selectBookListAdmin() {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectList("selectBookListAdmin");
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();

	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;

	   }
	   public static AuthorBean selectAuthorAdmin(String authorcode) {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectOne("selectAuthorAdmin",authorcode);
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         
	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;

	   }
	   public static PublisherBean selectPublisherAdmin(String publishercode) {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectOne("selectPublisherAdmin",publishercode);
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         
	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;
	      
	   }
	   public static CategoryBean selectCategoryAdmin(String categorycode) {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectOne("selectCategoryAdmin",categorycode);
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         
	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;
	      
	   }
	   public static BookBean selectBookAdmin(String bookcode) {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectOne("selectBookAdmin",bookcode);
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         
	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;
	      
	   }
	   public static List<PublisherBean> selectPublListAdmin() {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectList("selectPublListAdmin");
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         
	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;
	      
	   }
	   public static List<MemberBean> selectMemberListAdmin() {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectList("selectMemberListAdmin");
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         
	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;
	      
	   }
	   public static List<AuthorBean> selectAuthorListAdmin() {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectList("selectAuthorListAdmin");
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         
	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;
	      
	   }
	   public static List<EvaluationBean> selectEvalListAdmin() {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectList("selectEvalListAdmin");
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         
	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;
	      
	   }
	   public static List<CategoryBean> selectCateListAdmin() {
	      SqlSession sqlsession = null;
	      try {
	         sqlsession = sqlSessionFactory.openSession();
	         return sqlsession.selectList("selectCateListAdmin");
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         
	      } finally {
	         try {
	            if (sqlsession != null)
	               sqlsession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	         }
	      } // finally
	      return null;
	      
	   }
	   
	   public static void addPublAdmin(PublisherBean bean) {
	      SqlSession sqlSession = null;
	      try {
	         sqlSession = sqlSessionFactory.openSession();
	         sqlSession.insert("addPublAdmin", bean);
	         sqlSession.commit();
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         sqlSession.rollback();
	      } finally {
	         try {
	            sqlSession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	            e2.printStackTrace();
	         }
	      }
	   }
	   public static void addAuthorAdmin(AuthorBean bean) {
	      SqlSession sqlSession = null;
	      try {
	         sqlSession = sqlSessionFactory.openSession();
	         sqlSession.insert("addAuthorAdmin", bean);
	         sqlSession.commit();
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         sqlSession.rollback();
	      } finally {
	         try {
	            sqlSession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	            e2.printStackTrace();
	         }
	      }
	   }

}
