CREATE TABLE attendant (
   id UUID DEFAULT RANDOM_UUID() NOT NULL PRIMARY KEY, 
   first_name VARCHAR(255) NOT NULL, 
   last_name VARCHAR(255) NOT NULL, 
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);

CREATE TABLE customer ( 
   id UUID DEFAULT RANDOM_UUID() NOT NULL PRIMARY KEY, 
   first_name VARCHAR(255) NOT NULL, 
   last_name VARCHAR(255) NOT NULL, 
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);

CREATE TABLE book ( 
   id UUID DEFAULT RANDOM_UUID() NOT NULL PRIMARY KEY, 
   name VARCHAR(255) NOT NULL, 
   description VARCHAR(2048) NOT NULL, 
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);

CREATE TABLE loan ( 
   id UUID DEFAULT RANDOM_UUID() NOT NULL PRIMARY KEY,
   customer_id UUID NOT NULL,
   attendant_id UUID NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   FOREIGN KEY (customer_id) REFERENCES customer(id),
   FOREIGN KEY (attendant_id) REFERENCES attendant(id)
);

CREATE TABLE loan_item ( 
   loan_id UUID NOT NULL,
   customer_id UUID NOT NULL,
   book_id UUID NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   FOREIGN KEY (loan_id) REFERENCES loan(id),
   FOREIGN KEY (customer_id) REFERENCES customer(id),
   FOREIGN KEY (book_id) REFERENCES book(id),
   PRIMARY KEY (loan_id, customer_id, book_id)
);

INSERT INTO attendant (id, first_name, last_name) VALUES ('309E1AAB76B84D449A775975F1575100', 'John', 'Coltrane');
INSERT INTO attendant (id, first_name, last_name) VALUES ('319E1AAB76B84D449A775975F1575101', 'Emily','Bronte');

INSERT INTO book (id, name, description) VALUES ('500E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');
INSERT INTO book (id, name, description) VALUES ('501E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');
INSERT INTO book (id, name, description) VALUES ('502E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');
INSERT INTO book (id, name, description) VALUES ('503E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');
INSERT INTO book (id, name, description) VALUES ('504E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');
INSERT INTO book (id, name, description) VALUES ('505E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');
INSERT INTO book (id, name, description) VALUES ('506E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');
INSERT INTO book (id, name, description) VALUES ('507E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');
INSERT INTO book (id, name, description) VALUES ('508E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');
INSERT INTO book (id, name, description) VALUES ('509E1AAB76B84D449A775975F1575100', 'The Pragmatic Programmer', 'The Pragmatic Programmer: From Journeyman to Master is a book about computer programming and software engineering, written by Andrew Hunt and David Thomas and published in October 1999.');

INSERT INTO book (id, name, description) VALUES ('510E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');
INSERT INTO book (id, name, description) VALUES ('511E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');
INSERT INTO book (id, name, description) VALUES ('512E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');
INSERT INTO book (id, name, description) VALUES ('513E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');
INSERT INTO book (id, name, description) VALUES ('514E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');
INSERT INTO book (id, name, description) VALUES ('515E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');
INSERT INTO book (id, name, description) VALUES ('516E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');
INSERT INTO book (id, name, description) VALUES ('517E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');
INSERT INTO book (id, name, description) VALUES ('518E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');
INSERT INTO book (id, name, description) VALUES ('519E1AAB76B84D449A775975F1575101', 'The Mythical Man-Month', 'The Mythical Man-Month: Essays on Software Engineering is a book on software engineering and project management by Fred Brooks first published in 1975, with subsequent editions in 1982 and 1995. Its central theme is that adding manpower to a software project that is behind schedule delays it even longer.');

INSERT INTO book (id, name, description) VALUES ('520E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');
INSERT INTO book (id, name, description) VALUES ('521E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');
INSERT INTO book (id, name, description) VALUES ('522E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');
INSERT INTO book (id, name, description) VALUES ('523E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');
INSERT INTO book (id, name, description) VALUES ('524E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');
INSERT INTO book (id, name, description) VALUES ('525E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');
INSERT INTO book (id, name, description) VALUES ('526E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');
INSERT INTO book (id, name, description) VALUES ('527E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');
INSERT INTO book (id, name, description) VALUES ('528E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');
INSERT INTO book (id, name, description) VALUES ('529E1AAB76B84D449A775975F1575102', 'Refactoring: Improving the Design of Existing Code', 'Refactoring: Improving the Design of Existing Code. Book by Martin Fowler: Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand');

INSERT INTO book (id, name, description) VALUES ('530E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');
INSERT INTO book (id, name, description) VALUES ('531E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');
INSERT INTO book (id, name, description) VALUES ('532E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');
INSERT INTO book (id, name, description) VALUES ('533E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');
INSERT INTO book (id, name, description) VALUES ('534E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');
INSERT INTO book (id, name, description) VALUES ('535E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');
INSERT INTO book (id, name, description) VALUES ('536E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');
INSERT INTO book (id, name, description) VALUES ('537E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');
INSERT INTO book (id, name, description) VALUES ('538E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');
INSERT INTO book (id, name, description) VALUES ('539E1AAB76B84D449A775975F1575103', 'Design Patterns', 'Design Patterns: Elements of Reusable Object-Oriented Software (1994) is a software engineering book describing software design patterns. The book was written by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, with a foreword by Grady Booch.');

INSERT INTO book (id, name, description) VALUES ('540E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');
INSERT INTO book (id, name, description) VALUES ('541E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');
INSERT INTO book (id, name, description) VALUES ('542E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');
INSERT INTO book (id, name, description) VALUES ('543E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');
INSERT INTO book (id, name, description) VALUES ('544E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');
INSERT INTO book (id, name, description) VALUES ('545E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');
INSERT INTO book (id, name, description) VALUES ('546E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');
INSERT INTO book (id, name, description) VALUES ('547E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');
INSERT INTO book (id, name, description) VALUES ('548E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');
INSERT INTO book (id, name, description) VALUES ('549E1AAB76B84D449A775975F1575104', 'The Phoenix Project', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win.');

INSERT INTO customer (id, first_name, last_name) VALUES ('409E1AAB76B84D449A775975F1575100', 'Martin', 'Gibson');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('609E1AAB76B84D449A775975F1575100', '409E1AAB76B84D449A775975F1575100', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('619E1AAB76B84D449A775975F1575101', '409E1AAB76B84D449A775975F1575100', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('609E1AAB76B84D449A775975F1575100', '409E1AAB76B84D449A775975F1575100', '500E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('609E1AAB76B84D449A775975F1575100', '409E1AAB76B84D449A775975F1575100', '510E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('619E1AAB76B84D449A775975F1575101', '409E1AAB76B84D449A775975F1575100', '520E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('619E1AAB76B84D449A775975F1575101', '409E1AAB76B84D449A775975F1575100', '530E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('619E1AAB76B84D449A775975F1575101', '409E1AAB76B84D449A775975F1575100', '540E1AAB76B84D449A775975F1575104');

INSERT INTO customer (id, first_name, last_name) VALUES ('419E1AAB76B84D449A775975F1575101', 'Eleanora', 'Gough');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('709E1AAB76B84D449A775975F1575100', '419E1AAB76B84D449A775975F1575101', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('719E1AAB76B84D449A775975F1575101', '419E1AAB76B84D449A775975F1575101', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('709E1AAB76B84D449A775975F1575100', '419E1AAB76B84D449A775975F1575101', '501E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('709E1AAB76B84D449A775975F1575100', '419E1AAB76B84D449A775975F1575101', '511E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('719E1AAB76B84D449A775975F1575101', '419E1AAB76B84D449A775975F1575101', '521E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('719E1AAB76B84D449A775975F1575101', '419E1AAB76B84D449A775975F1575101', '531E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('719E1AAB76B84D449A775975F1575101', '419E1AAB76B84D449A775975F1575101', '541E1AAB76B84D449A775975F1575104');

INSERT INTO customer (id, first_name, last_name) VALUES ('429E1AAB76B84D449A775975F1575102', 'Rosetta', 'Tharpe');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('809E1AAB76B84D449A775975F1575100', '429E1AAB76B84D449A775975F1575102', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('819E1AAB76B84D449A775975F1575101', '429E1AAB76B84D449A775975F1575102', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('809E1AAB76B84D449A775975F1575100', '429E1AAB76B84D449A775975F1575102', '502E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('809E1AAB76B84D449A775975F1575100', '429E1AAB76B84D449A775975F1575102', '512E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('819E1AAB76B84D449A775975F1575101', '429E1AAB76B84D449A775975F1575102', '522E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('819E1AAB76B84D449A775975F1575101', '429E1AAB76B84D449A775975F1575102', '532E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('819E1AAB76B84D449A775975F1575101', '429E1AAB76B84D449A775975F1575102', '542E1AAB76B84D449A775975F1575104');

INSERT INTO customer (id, first_name, last_name) VALUES ('439E1AAB76B84D449A775975F1575103', 'Karl', 'Popper');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('909E1AAB76B84D449A775975F1575100', '439E1AAB76B84D449A775975F1575103', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('919E1AAB76B84D449A775975F1575101', '439E1AAB76B84D449A775975F1575103', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('909E1AAB76B84D449A775975F1575100', '439E1AAB76B84D449A775975F1575103', '503E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('909E1AAB76B84D449A775975F1575100', '439E1AAB76B84D449A775975F1575103', '513E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('919E1AAB76B84D449A775975F1575101', '439E1AAB76B84D449A775975F1575103', '523E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('919E1AAB76B84D449A775975F1575101', '439E1AAB76B84D449A775975F1575103', '533E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('919E1AAB76B84D449A775975F1575101', '439E1AAB76B84D449A775975F1575103', '543E1AAB76B84D449A775975F1575104');

INSERT INTO customer (id, first_name, last_name) VALUES ('449E1AAB76B84D449A775975F1575104', 'Vincent', 'Vega');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('009E1AAB76B84D449A775975F1575100', '449E1AAB76B84D449A775975F1575104', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id) VALUES ('019E1AAB76B84D449A775975F1575101', '449E1AAB76B84D449A775975F1575104', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('009E1AAB76B84D449A775975F1575100', '449E1AAB76B84D449A775975F1575104', '504E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('009E1AAB76B84D449A775975F1575100', '449E1AAB76B84D449A775975F1575104', '514E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('019E1AAB76B84D449A775975F1575101', '449E1AAB76B84D449A775975F1575104', '524E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('019E1AAB76B84D449A775975F1575101', '449E1AAB76B84D449A775975F1575104', '534E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('019E1AAB76B84D449A775975F1575101', '449E1AAB76B84D449A775975F1575104', '544E1AAB76B84D449A775975F1575104');

INSERT INTO customer (id, first_name, last_name)      VALUES ('11111AAB76B84D449A775975F1575104', 'Eleanor', 'Higby');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('00111AAB76B84D449A775975F1575100', '11111AAB76B84D449A775975F1575104', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('01111AAB76B84D449A775975F1575101', '11111AAB76B84D449A775975F1575104', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00111AAB76B84D449A775975F1575100', '11111AAB76B84D449A775975F1575104', '505E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00111AAB76B84D449A775975F1575100', '11111AAB76B84D449A775975F1575104', '515E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01111AAB76B84D449A775975F1575101', '11111AAB76B84D449A775975F1575104', '525E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01111AAB76B84D449A775975F1575101', '11111AAB76B84D449A775975F1575104', '535E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01111AAB76B84D449A775975F1575101', '11111AAB76B84D449A775975F1575104', '545E1AAB76B84D449A775975F1575104');

INSERT INTO customer (id, first_name, last_name)      VALUES ('11112AAB76B84D449A775975F1575104', 'Jader', 'Kamal');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('00112AAB76B84D449A775975F1575100', '11112AAB76B84D449A775975F1575104', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('01112AAB76B84D449A775975F1575101', '11112AAB76B84D449A775975F1575104', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00112AAB76B84D449A775975F1575100', '11112AAB76B84D449A775975F1575104', '506E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00112AAB76B84D449A775975F1575100', '11112AAB76B84D449A775975F1575104', '516E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01112AAB76B84D449A775975F1575101', '11112AAB76B84D449A775975F1575104', '526E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01112AAB76B84D449A775975F1575101', '11112AAB76B84D449A775975F1575104', '536E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01112AAB76B84D449A775975F1575101', '11112AAB76B84D449A775975F1575104', '546E1AAB76B84D449A775975F1575104');

INSERT INTO customer (id, first_name, last_name)      VALUES ('11113AAB76B84D449A775975F1575104', 'Gregor', 'Mendel');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('00113AAB76B84D449A775975F1575100', '11113AAB76B84D449A775975F1575104', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('01113AAB76B84D449A775975F1575101', '11113AAB76B84D449A775975F1575104', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00113AAB76B84D449A775975F1575100', '11113AAB76B84D449A775975F1575104', '507E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00113AAB76B84D449A775975F1575100', '11113AAB76B84D449A775975F1575104', '517E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01113AAB76B84D449A775975F1575101', '11113AAB76B84D449A775975F1575104', '527E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01113AAB76B84D449A775975F1575101', '11113AAB76B84D449A775975F1575104', '537E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01113AAB76B84D449A775975F1575101', '11113AAB76B84D449A775975F1575104', '547E1AAB76B84D449A775975F1575104');

INSERT INTO customer (id, first_name, last_name)      VALUES ('11114AAB76B84D449A775975F1575104', 'Tales', 'Mileto');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('00114AAB76B84D449A775975F1575100', '11114AAB76B84D449A775975F1575104', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('01114AAB76B84D449A775975F1575101', '11114AAB76B84D449A775975F1575104', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00114AAB76B84D449A775975F1575100', '11114AAB76B84D449A775975F1575104', '508E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00114AAB76B84D449A775975F1575100', '11114AAB76B84D449A775975F1575104', '518E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01114AAB76B84D449A775975F1575101', '11114AAB76B84D449A775975F1575104', '528E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01114AAB76B84D449A775975F1575101', '11114AAB76B84D449A775975F1575104', '538E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01114AAB76B84D449A775975F1575101', '11114AAB76B84D449A775975F1575104', '548E1AAB76B84D449A775975F1575104');

INSERT INTO customer (id, first_name, last_name)      VALUES ('11115AAB76B84D449A775975F1575104', 'Ada', 'Lovelace');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('00115AAB76B84D449A775975F1575100', '11115AAB76B84D449A775975F1575104', '309E1AAB76B84D449A775975F1575100');
INSERT INTO loan (id, customer_id, attendant_id)      VALUES ('01115AAB76B84D449A775975F1575101', '11115AAB76B84D449A775975F1575104', '319E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00115AAB76B84D449A775975F1575100', '11115AAB76B84D449A775975F1575104', '509E1AAB76B84D449A775975F1575100');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('00115AAB76B84D449A775975F1575100', '11115AAB76B84D449A775975F1575104', '519E1AAB76B84D449A775975F1575101');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01115AAB76B84D449A775975F1575101', '11115AAB76B84D449A775975F1575104', '529E1AAB76B84D449A775975F1575102');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01115AAB76B84D449A775975F1575101', '11115AAB76B84D449A775975F1575104', '539E1AAB76B84D449A775975F1575103');
INSERT INTO loan_item (loan_id, customer_id, book_id) VALUES ('01115AAB76B84D449A775975F1575101', '11115AAB76B84D449A775975F1575104', '549E1AAB76B84D449A775975F1575104');
