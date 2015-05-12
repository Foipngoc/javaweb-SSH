package com.common.utils.tree;

import com.common.dao.BaseQueryRecords;

public interface TreeDao<E> {
	public BaseQueryRecords<?> _findRootNodes();

	public BaseQueryRecords<?> _findRootNodes(int page, int rows);

	public BaseQueryRecords<?> _findRootNodes(int type);

	public BaseQueryRecords<?> _findRootNodes(int type, int page, int rows);

	public BaseQueryRecords<?> _findLeafNodes();

	public BaseQueryRecords<?> _findLeafNodes(int page, int rows);

	public BaseQueryRecords<?> _findLeafNodes(int type);

	public BaseQueryRecords<?> _findLeafNodes(int type, int page, int rows);

	public BaseQueryRecords<?> _findNodes();

	public BaseQueryRecords<?> _findNodes(int page, int rows);

	public BaseQueryRecords<?> _findNodes(int type);

	public BaseQueryRecords<?> _findNodes(int type, int page, int rows);

	public BaseQueryRecords<?> _findChildrenNodes(E node);

	public BaseQueryRecords<?> _findChildrenNodes(E node, int page, int rows);

	public BaseQueryRecords<?> _findChildrenNodes(E node, int type);

	public BaseQueryRecords<?> _findChildrenNodes(E node, int type, int page,
			int rows);

	public E _addNode(E node);

	public boolean _delNode(E node);

	public E _updateNode(E node);

	public E _findNode(E node);

	public boolean _bindTwoNode(E pnode, E snode);

	public boolean _delbindTwoNode(E pnode, E snode);

	public boolean _delBindChildrenNodes(E node);

	public boolean _delBindParentNodes(E node);

	public boolean _ifTwoNodeHasRelation(E pnode, E snode);

	public BaseQueryRecords<?> _findParentNodes(E node);

	public boolean _ifNodeEqual(E nodea, E nodeb);

	public void _modifyNode(E node);
}